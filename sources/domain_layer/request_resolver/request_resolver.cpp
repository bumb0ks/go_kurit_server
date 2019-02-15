#include <iostream>

#include "request_resolver.h"
#include "domain_layer/message_traits.h"

using namespace message_traits;
using nlohmann::json;
using domain_layer::RequestResolver;

RequestResolver::RequestResolver()
{
    this->fillResolveFuncMap();
}

RequestResolver::~RequestResolver()
{

}

const json &RequestResolver::resolve(const json & msg)
{
    json* reply = new json();
    json payload;
    if (msg.find(type_name) == msg.end() || msg.find(payload_name) == msg.end())
        return *(new json());

    std::string type = msg[type_name].get<std::string>();
    json msg_payload = msg[payload_name].get<json>();

    payload = resolveFuncMap[type](msg_payload);
    (*reply)[type_name] = type;
    (*reply)[payload_name] = payload;

    return *reply;
}

void RequestResolver::fillResolveFuncMap()
{
    using std::placeholders::_1;

    resolveFuncMap[message_type]    = std::bind(&RequestResolver::messageResolve,   this, _1);
    resolveFuncMap[register_type]   = std::bind(&RequestResolver::registerResolve,  this, _1);
    resolveFuncMap[contacts_type]   = std::bind(&RequestResolver::contancsResolve,  this, _1);
    resolveFuncMap[new_client_type] = std::bind(&RequestResolver::newClientResolve, this, _1);
    resolveFuncMap[hello_type]      = std::bind(&RequestResolver::helloResolve, this, _1);
}

const json &RequestResolver::messageResolve(const json &payload)
{
    return payload;
}

const json &RequestResolver::contancsResolve(const json &payload)
{
    json* reply_payload = new json();

    std::vector< json > contacts;

    // TODO: nado otkuda to vzyat spisok zaregannih polyzavatelej

    json contact;
    contact["uid"] = "14/88";
    contact["name"] = "Zhgi";

    contact.push_back(contact);
    contact.push_back(contact);
    contact.push_back(contact);

    (*reply_payload)["contacts"] = contacts;

    return *reply_payload;
}

const json &RequestResolver::newClientResolve(const json &payload)
{
    return payload;
}

const json &RequestResolver::registerResolve(const json &payload)
{
    // change uid in file to new generated uid
    json* reply_payload = new json(payload);

    (*reply_payload)["uid"] = (*reply_payload)["uid"].get<std::string>() + "_new";

    return *reply_payload;
}

const nlohmann::json &RequestResolver::helloResolve(const nlohmann::json &payload)
{
    return payload;
}
