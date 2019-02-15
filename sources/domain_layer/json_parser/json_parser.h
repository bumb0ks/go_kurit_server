#ifndef JSON_PARSER_H
#define JSON_PARSER_H

#include <nlohmann/json.hpp>

using nlohmann::json;

namespace domain_layer
{
    class JsonParser
    {
    public:
        explicit JsonParser();
        ~JsonParser();

        const json& parseData(const std::string&);
        const std::string& parseJson(const json&);
    private:

    };
}

#endif
