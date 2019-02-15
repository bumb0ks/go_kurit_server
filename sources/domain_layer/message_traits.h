#ifndef MESSAGE_TRAITS_H
#define MESSAGE_TRAITS_H

#include <string>
#include <array>
#include <functional>

namespace message_traits
{
    struct Message
    {
        std::string uid;
        std::string data;
    };

    typedef std::function< void(const Message&) > MessageFunctor;

    const std::string broadcast_uid = "0000";

    const std::string payload_name = "payload";
    const std::string type_name = "type";

    const std::string message_type = "message";
    const std::string register_type = "register";
    const std::string contacts_type = "contacts";
    const std::string new_client_type = "new_client";
    const std::string hello_type = "hello";

    const std::array< std::string, 2 > types_broadcast{ message_type,
                                                        new_client_type };

    const std::array< std::string, 3 > types_unicast{ register_type,
                                                    contacts_type,
                                                    hello_type};
}

#endif
