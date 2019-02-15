#include <iostream>

#include "domain_layer/message_traits.h"
#include "message_manager.h"
#include "domain_layer/message_handler/message_handler.h"

using domain_layer::MessageManager;

MessageManager::MessageManager() :
    m_isRunning( true ),
    m_messageHandler( new MessageHandler() )
{
    using std::placeholders::_1;
    m_messageHandler->setSendNewMessageCallback(std::bind(&MessageManager::pushMessage, this, _1));

    m_handleThread = std::thread(std::bind(&MessageManager::handleMessages, this));
    m_handleThread.detach();
}

MessageManager::~MessageManager()
{
    m_isRunning = false;
    if( m_handleThread.joinable() )
        m_handleThread.join();
}

void MessageManager::setMessageCallback(MessageFunctor messageFunctor)
{
    m_messageCallback = messageFunctor;
    // need to set same FUNCTOR t messahe handler callback
}

void MessageManager::pushMessage(const Message &msg)
{
    m_messageQueue.push(msg);
}

void MessageManager::handleMessages()
{
    while( m_isRunning )
    {
        while( !m_messageQueue.empty() )
        {
            Message msg = m_messageQueue.front();

            m_messageQueue.pop();

            m_messageHandler->handleMessage(msg);

            m_messageCallback(msg);
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }
}
