#ifndef NETWORK_MANAGER_H
#define NETWORK_MANAGER_H

#include <unordered_map>
#include <memory>
#include <netinet/in.h>
#include <atomic>

#include "domain_layer/message_traits.h"

using namespace message_traits;

namespace network_layer
{
    class ClientConnection;

    class NetworkManager
    {
    public:
        explicit NetworkManager();

        ~NetworkManager();

        void startServer();

        void send(const Message&);

        void setReceiveFunctor(MessageFunctor);

    private:
        void stopClientAcception();

        void newClient(int fd, const std::string& uid);

        void sendToAll(const Message&);

        void sendExclude(const std::string& uid, const Message& msg);

        void onNewMessage(const Message&);

    private:
        int m_mainSocketFd;
        struct sockaddr_in m_serv_addr;

        const uint16_t m_port_no = 40001;
        const char* m_addr = "192.168.134.136";//"127.0.0.1";

        std::atomic<bool> m_isAccepting;

        MessageFunctor m_receiveFunctor;

        std::unordered_map< std::string, std::shared_ptr< ClientConnection > > m_clientsMap;
    };
}

#endif
