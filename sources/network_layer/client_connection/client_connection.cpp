#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <sys/types.h>
#include <string.h>

#include <iostream>
#include <memory>
#include <thread>
#include <functional>

#include "client_connection.h"

using namespace network_layer;

ClientConnection::ClientConnection(int fd, const std::string& uid) :
    m_sockFd(fd),
    m_uid(uid),
    m_isReading(false)
{
    if( m_sockFd < 0 )
    {
        std::cout << "[" << m_uid << "] accept error" << std::endl;
    }
}

void ClientConnection::setOnReceive(MessageFunctor functor)
{
    m_receiveFunctor = functor;
}

ClientConnection::~ClientConnection()
{
    m_isReading = false;
    if( m_readThread.joinable() )
        m_readThread.join();
    close(m_sockFd);
}

void ClientConnection::start()
{
    m_isReading = true;
    m_readThread = std::thread(std::bind(&ClientConnection::_read, this));
    m_readThread.detach();
}

const std::string &ClientConnection::uid() const
{
    return m_uid;
}

void ClientConnection::write(const std::string &str)
{
    std::string msg = std::move(str);

    size_t bytes_count = msg.length();

    std::string bytes_count_str = std::to_string(bytes_count);

    while( bytes_count_str.length() < 4 )
        bytes_count_str = '0' + bytes_count_str;

    msg = bytes_count_str + msg;

    send( m_sockFd, msg.c_str(), msg.length(), 0);
}

void ClientConnection::_read() // rewrite
{
    char buffer[256];
    std::string local_buffer = "";
    ssize_t read_result = 0;

    size_t bytes_needed = 0;

    while( m_isReading )
    {
        bzero(buffer, 256);

        read_result = read( m_sockFd, buffer, 255 );

        if( read_result < 0 )
        {
            std::cout << "[" << m_uid << "] Read error" << std::endl;
            return;
        }
        else if (read_result == 0)
        {
            continue;
        }

        std::string buf_str = std::string(buffer, static_cast<size_t>(read_result));

        while(!buf_str.empty() || !local_buffer.empty())
        {
            if( bytes_needed == 0 )
            {
                try
                {
                    buf_str = local_buffer + buf_str;

                    local_buffer.clear();

                    bytes_needed = static_cast<size_t>( std::stoi(buf_str.substr(0, 4)) );
                }
                catch ( std::invalid_argument e )
                {
                    std::cout << "[serv] Invalid packet's begining " << e.what() << std::endl;
                    buf_str.clear();
                    continue;
                }

                if( 4 + bytes_needed <= 4 )
                {
                    local_buffer += buf_str;

//                    bytes_needed = 4 - bytes_needed;

                    buf_str.clear();

                    break;
                }

                if( buf_str.length() >= 4 + bytes_needed )
                {
                    local_buffer = buf_str.substr(4 + bytes_needed, buf_str.length() - (4 + bytes_needed));
                }

                buf_str = buf_str.substr(4, bytes_needed);
            }

            bytes_needed -= buf_str.length();

            if( bytes_needed == 0 )
            {
                this->m_receiveFunctor(Message {this->m_uid, local_buffer + buf_str});

                local_buffer.clear();

                buf_str.clear();
            }
            else if ( bytes_needed > 0 )
            {
                local_buffer += buf_str;

                buf_str.clear();

                break;
            }
            else
            {
                bytes_needed += buf_str.length();

                std::string left_buf = buf_str.substr(0, bytes_needed);

                local_buffer += left_buf;

                this->m_receiveFunctor(Message {this->m_uid, local_buffer});

                local_buffer.clear();

                buf_str = buf_str.substr(bytes_needed, buf_str.length() - bytes_needed);

                bytes_needed = 0;
            }

        }

//        bytes_needed == 0 ? std::this_thread::sleep_for(std::chrono::milliseconds(100)) :
//                            std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }
}
