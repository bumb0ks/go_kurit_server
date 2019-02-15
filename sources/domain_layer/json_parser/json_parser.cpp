#include <iostream>

#include "json_parser.h"

using domain_layer::JsonParser;

JsonParser::JsonParser()
{

}

JsonParser::~JsonParser()
{

}

const json &JsonParser::parseData(const std::string &data)
{
    std::vector<uint8_t> data_vector(data.begin(), data.end());
    json* result = new json(json::from_msgpack(data_vector));
    return *result;
}

const std::string &JsonParser::parseJson(const json &json)
{
    std::vector<uint8_t> vector_data = json::to_msgpack(json);
    std::string* result = new std::string(vector_data.begin(), vector_data.end());
    return *result;
}
