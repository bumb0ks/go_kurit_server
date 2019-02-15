#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <sys/types.h>
#include <string.h>
#include <string>

#include <iostream>
#include <memory>
#include <thread>

// previous only for runClient() Func

#include <functional>

#include "network_layer/network_manager/network_manager.h"
#include "domain_layer/message_manager/message_manager.h"
#include "domain_layer/message_traits.h"
#include "server_app.h"

#include <nlohmann/json.hpp>

using namespace message_traits;

ServerApp::ServerApp() :
    m_networkManager(new NetworkManager()) ,
    m_messageManager(new MessageManager())
{
    this->printHello();

    using namespace std::placeholders;

    m_networkManager->setReceiveFunctor(std::bind(&ServerApp::onNewMessage, this, _1));

    m_messageManager->setMessageCallback(std::bind(&ServerApp::onReplyMessage, this, _1));

    m_networkManager->startServer();

//    std::this_thread::sleep_for(std::chrono::milliseconds(400));

//    this->runClient();
}

ServerApp::~ServerApp()
{

}

void ServerApp::onNewMessage(const message_traits::Message &msg)
{
    std::cout << "[SERVER] From " << msg.uid << " msg >> " << msg.data << std::endl;
    m_messageManager->pushMessage(msg);
}

void ServerApp::onReplyMessage(const message_traits::Message &msg)
{
    m_networkManager->send(msg);
}

void ServerApp::printHello()
{
    std::cout << "           Hello, blyat, world!" << std::endl;
    std::cout << "   /|^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^|\\" << std::endl;
    std::cout << " <  |   /^^^\\   /^^|                  |  >" << std::endl;
    std::cout << "   \\|       |  | | |      [ H O S T ] |/" << std::endl;
    std::cout << "   /|   T\\  |  | | |                  |\\" << std::endl;
    std::cout << "  / |   \\___/  |__/                   | \\" << std::endl;
    std::cout << "<   |                    O            |   >" << std::endl;
    std::cout << "  \\ |     | / |  | |^^\\  | ^^T^^      | /" << std::endl;
    std::cout << "   \\|     |/  |  | |  /  |   |        |/" << std::endl;
    std::cout << "   /|     |\\  |  | |^^   |   |        |\\" << std::endl;
    std::cout << " <  |     | \\ |_/\\ |  \\  |   |        |  >" << std::endl;
    std::cout << "   \\|_________________________________|/" << std::endl;
}

void ServerApp::runClient()
{
    int sockfd;
    uint16_t port = 40001;
    size_t n;
    struct sockaddr_in serv_addr;

    char buffer[256];

    sockfd = socket(AF_INET, SOCK_STREAM, 0);

    if( sockfd < 0 )
    {
        std::cout << "[cli] Error creating socket" << std::endl;
    }

    bzero((char *) &serv_addr, sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr("192.168.134.136");//"127.0.0.1");
    serv_addr.sin_port = htons(port);

    if( connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0 )
    {
        std::cout << "[cli] Error connecting" << std::endl;
    }

    std::thread([&](){
        while( true )
        {
            bzero(buffer, 256);

            n = read(sockfd, buffer, 255);
            if( n < 0 )
            {
                std::cout << "[cli] error reading" << std::endl;
                close(sockfd);
                return;
            }

            std::cout << "[cli] Income " << std::string(buffer, n) << std::endl;
        }
    }).detach();

    int i = 0;
    while( i != 100 )
    {
        std::string sstr;

//        std::cin >> sstr;

//        if( sstr == "stop" )
//        {
//            std::cout << "Bye!" << std::endl;
//            break;
//        }

        nlohmann::json msg;
        nlohmann::json payload;

        payload["from"] = "loler";
        payload["text"] = "fuck all " + std::to_string(i) + " times";

        msg[type_name] = message_type;
        msg[payload_name] = payload;

        std::vector<uint8_t> vector_data = nlohmann::json::to_msgpack(msg);
        std::string* result = new std::string(vector_data.begin(), vector_data.end());

        sstr = *result;

        int bytes_count = sstr.length();

        std::string bytes_count_str = std::to_string(bytes_count);

        while( bytes_count_str.length() < 4 )
            bytes_count_str = '0' + bytes_count_str;

        sstr = bytes_count_str + sstr;

        n = write(sockfd, sstr.c_str(), sstr.length());
        std::cout << "[cli] sending " << sstr << std::endl;

        if(n < 0)
            std::cout << "[cli] error writing" << std::endl;
        ++i;
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    std::this_thread::sleep_for(std::chrono::seconds(5));

    close(sockfd);
}

void ServerApp::runListener()
{
    int sockfd;
    uint16_t port = 40001;
    size_t n;
    struct sockaddr_in serv_addr;

    char buffer[256];

    sockfd = socket(AF_INET, SOCK_STREAM, 0);

    if( sockfd < 0 )
    {
        std::cout << "[cli] Error creating socket" << std::endl;
    }

    bzero((char *) &serv_addr, sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    serv_addr.sin_port = htons(port);

    if( connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0 )
    {
        std::cout << "[cli] Error connecting" << std::endl;
    }

    std::thread([&](){
        while( true )
        {
            bzero(buffer, 256);

            n = read(sockfd, buffer, 255);
            if( n < 0 )
            {
                std::cout << "[cli] error reading" << std::endl;
                close(sockfd);
                return;
            }

            std::cout << "[cli] Income " << std::string(buffer, n) << std::endl;
        }
    }).detach();

    int i = 0;
    while( i != 100 )
    {
        std::string sstr;

//        std::cin >> sstr;

//        if( sstr == "stop" )
//        {
//            std::cout << "Bye!" << std::endl;
//            break;
//        }

        nlohmann::json msg;
        nlohmann::json payload;

        payload["from"] = "loler";
        payload["text"] = "fuck all " + std::to_string(i) + " times";

        msg[type_name] = message_type;
        msg[payload_name] = payload;

        std::vector<uint8_t> vector_data = nlohmann::json::to_msgpack(msg);
        std::string* result = new std::string(vector_data.begin(), vector_data.end());

        sstr = *result;

        int bytes_count = sstr.length();

        std::string bytes_count_str = std::to_string(bytes_count);

        while( bytes_count_str.length() < 4 )
            bytes_count_str = '0' + bytes_count_str;

        sstr = bytes_count_str + sstr;

        n = write(sockfd, sstr.c_str(), sstr.length());
        std::cout << "[cli] sending " << sstr << std::endl;

        if(n < 0)
            std::cout << "[cli] error writing" << std::endl;
        ++i;
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    std::this_thread::sleep_for(std::chrono::seconds(5));

    close(sockfd);
}
