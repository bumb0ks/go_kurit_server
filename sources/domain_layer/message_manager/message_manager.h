#ifndef MESSAGE_MANAGER_H
#define MESSAGE_MANAGER_H

#include <atomic>
#include <thread>
#include <queue>

#include "domain_layer/message_traits.h"

using namespace message_traits;

namespace domain_layer
{
    class MessageHandler;
    class MessageManager
    {
    public:
        explicit MessageManager();
        ~MessageManager();

        void setMessageCallback(MessageFunctor messageFunctor);

        void pushMessage(const Message& msg);

        void handleMessages();
    private:
        std::queue< Message > m_messageQueue;
        MessageFunctor m_messageCallback;

        std::thread m_handleThread;

        std::atomic< bool > m_isRunning;

        std::unique_ptr< MessageHandler > m_messageHandler;
    };
}

#endif
