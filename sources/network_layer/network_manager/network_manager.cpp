#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>

#include <string>
#include <unordered_map>
#include <iostream>
#include <memory>
#include <thread>
#include <functional>

#include "network_manager.h"
#include "network_layer/client_connection/client_connection.h"

using namespace network_layer;
using namespace std::placeholders;

using network_layer::ClientConnection;

NetworkManager::NetworkManager() :
    m_isAccepting (false)
{
    bzero((char *) &m_serv_addr, sizeof(m_serv_addr));

    m_serv_addr.sin_family = AF_INET;
    m_serv_addr.sin_addr.s_addr = inet_addr(m_addr);
    m_serv_addr.sin_port = htons(m_port_no);
}

NetworkManager::~NetworkManager()
{
    m_clientsMap.clear();

    this->stopClientAcception();
    close(m_mainSocketFd);
}

void NetworkManager::startServer()
{
    m_mainSocketFd = socket(AF_INET, SOCK_STREAM, 0);

    if( m_mainSocketFd < 0 )
    {
        std::cout << "[serv] Unable to create socket";
        return;
    }

    if( bind(m_mainSocketFd, (struct sockaddr *) &m_serv_addr, sizeof(m_serv_addr)) < 0 )
    {
        std::cout << "[serv] Unable to bind" << std::endl;
        close(m_mainSocketFd);
        return;
    }

    listen(m_mainSocketFd, 5);

    std::cout << "[serv] Listening" << std::endl;

    // comment thread-lambda wrap in release.

//    std::thread([&](){
        int clientSockFd;

        struct sockaddr_in cli_addr;
        socklen_t clilen;

        m_isAccepting = true;

        while(m_isAccepting)
        {
            clientSockFd = accept(m_mainSocketFd, (struct sockaddr *) &cli_addr, &clilen);

            std::string uid = std::string(inet_ntoa(cli_addr.sin_addr)) + ":" + std::to_string(cli_addr.sin_port);

            std::cout << "[SERVER] Connect from " << uid << " (" << clientSockFd << ") " << std::endl;

            this->newClient(clientSockFd, uid);
        }
//    }).detach();
}

void NetworkManager::send(const Message& msg)
{
    if( msg.uid != broadcast_uid )
    {
        std::unordered_map<std::string, std::shared_ptr< ClientConnection >>::iterator iter =
                this->m_clientsMap.find(msg.uid);

        if( iter._M_cur != nullptr )
            iter->second->write(msg.data);
    }
    else
    {
        this->sendToAll(msg);
    }
}

void NetworkManager::sendToAll(const Message& msg)
{
    for(auto client : m_clientsMap)
        client.second->write(msg.data);
}

void NetworkManager::sendExclude(const std::string &uid, const Message& msg)
{
    for(auto client : m_clientsMap)
        if(client.second->uid() != uid)
            client.second->write(msg.data);
}

void NetworkManager::setReceiveFunctor(MessageFunctor receiveFunctor)
{
    this->m_receiveFunctor = receiveFunctor;
}

void NetworkManager::stopClientAcception()
{
    m_isAccepting = false;
}

void NetworkManager::newClient(int fd, const std::string& uid)
{
    std::shared_ptr< ClientConnection > cliConnection = std::make_shared< ClientConnection >(fd, uid);

    cliConnection->setOnReceive(std::bind(&NetworkManager::onNewMessage, this, _1));

    cliConnection->start();

//    cliConnection->write("WHAAT?");

    m_clientsMap.insert( { uid, cliConnection } );
}

void NetworkManager::onNewMessage(const Message & msg)
{
    m_receiveFunctor(msg);
}
