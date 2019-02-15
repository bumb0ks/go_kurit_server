#include <iostream>

#include "domain_layer/message_traits.h"
#include "message_handler.h"
#include "domain_layer/json_parser/json_parser.h"
#include "domain_layer/request_resolver/request_resolver.h"

using namespace domain_layer;

MessageHandler::MessageHandler() :
    m_jsonParser(new JsonParser()),
    m_requestResolver(new RequestResolver())
{

}

MessageHandler::~MessageHandler()
{

}

const Message &MessageHandler::handleMessage(const Message & msg)
{
    Message* reply = new Message();

    json msg_json = m_jsonParser->parseData(msg.data);
    this->setReplyUid(*reply, msg_json, msg.uid);

    msg_json = m_requestResolver->resolve(msg_json);
    this->checkForAdditions(msg_json);
    reply->data = m_jsonParser->parseJson(msg_json);


    return *reply;
}

void MessageHandler::setSendNewMessageCallback(MessageFunctor fnc)
{
    callback_send_message_fnc = fnc;
}

void MessageHandler::setReplyUid(Message &reply, const json &msg_json, const std::string &request_uid) const
{
    if (msg_json.find("type") != msg_json.end())
    {
        std::string type = msg_json["type"].get<std::string>();
        if (std::find(types_broadcast.begin(), types_broadcast.end(), type) != types_broadcast.end())
            reply.uid = broadcast_uid;
        else if (std::find(types_unicast.begin(), types_unicast.end(), type) != types_unicast.end())
            reply.uid = request_uid;
        else
            reply.uid = "";
    }
}

void MessageHandler::checkForAdditions(const nlohmann::json &msg)
{
    if (msg[type_name].get<std::string>() == register_type)
    {
        json new_client_data = msg;

        new_client_data[type_name] = new_client_type;

        Message* new_client_msg = new Message({ broadcast_uid, m_jsonParser->parseJson(new_client_data) });

        callback_send_message_fnc(*new_client_msg);
    }
}
