#ifndef CLIENT_CONNECTION_H
#define CLIENT_CONNECTION_H

#include <string>
#include <functional>
#include <thread>
#include <atomic>

#include "domain_layer/message_traits.h"

using namespace message_traits;

namespace network_layer
{
    class ClientConnection
    {
    public:
        explicit ClientConnection(int fd, const std::string& uid);

        ~ClientConnection();

        void setOnReceive(MessageFunctor functor);

        void write( const std::string& str );

        void start();

        const std::string& uid() const;

    private:
        void _read();

    private:
        int m_sockFd;
        std::string m_uid;
        std::atomic<bool> m_isReading;

        MessageFunctor m_receiveFunctor;

        std::thread m_readThread;
    };
}

#endif
