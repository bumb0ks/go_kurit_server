#ifndef SERVER_APP_H
#define SERVER_APP_H

#include <iostream>
#include <memory>

namespace network_layer
{
    class NetworkManager;
}

namespace domain_layer
{
    class MessageManager;
}

namespace message_traits
{
    struct Message;
}

using namespace network_layer;
using namespace domain_layer;
using namespace message_traits;

class ServerApp
{
public:
    explicit ServerApp();
    ~ServerApp();

private:
    void onNewMessage(const Message& msg);
    void onReplyMessage(const Message& msg);

    void printHello();

    //For testing only

    void runClient();
    void runListener();

private:
    std::unique_ptr< NetworkManager > m_networkManager;
    std::unique_ptr< MessageManager > m_messageManager;
};

#endif
