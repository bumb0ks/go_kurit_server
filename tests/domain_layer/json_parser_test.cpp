#include "domain_layer/json_parser/json_parser.h"
#include "nlohmann/json.hpp"
#include <gtest/gtest.h>

using namespace domain_layer;
using nlohmann::json;

TEST(JsonParser, ToJson)
{
    JsonParser o;

    json test;
    json test_2;

    test["test_1"] = "test_1_string";
    test_2["test_1"] = "test_1_string";

    test["test_2"] = test_2;

    std::string data = o.parseJson(test);
    test_2 = o.parseData(data);

    EXPECT_EQ(test, test_2);

    test["><ASD"] = "test_1_string";
    test["><ASD><"] = "parseData";

    data = o.parseJson(test);
    test_2 = o.parseData(data);

    EXPECT_EQ(test, test_2);

}
