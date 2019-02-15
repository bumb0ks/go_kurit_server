#ifndef MESSAGE_HANDLER_H
#define MESSAGE_HANDLER_H

#include <atomic>
#include <thread>
#include <queue>

#include <nlohmann/json.hpp>
#include "domain_layer/message_traits.h"


using nlohmann::json;
using namespace message_traits;

namespace domain_layer
{
    class JsonParser;
    class RequestResolver;
    class MessageHandler
    {
    public:
        explicit MessageHandler();
        ~MessageHandler();

        const Message& handleMessage(const Message&);

        void setSendNewMessageCallback(MessageFunctor fnc);

    private:
        void setReplyUid(Message& reply, const json& msg_json, const std::string &request_uid) const;
        void checkForAdditions(const json& msg);

    private:
        MessageFunctor callback_send_message_fnc;

        std::unique_ptr<JsonParser> m_jsonParser;
        std::unique_ptr<RequestResolver> m_requestResolver;
    };
}

#endif
