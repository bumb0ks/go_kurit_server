#include <iostream>

#include "domain_layer/server_app/server_app.h"
#include <thread>
#include <queue>

/*
#include <nlohmann/json.hpp>

using nlohmann::json;
    json j = {
        {"happy", false},
        {"sleep", false},
        {"eat", false},
        {"sex", false}
    };

    bool isSex = false;

    if (j.find("sex") != j.end())
        isSex = j["sex"].get<bool>();

    std::cout << "isSex " << isSex;
*/

// Main
#include <functional>

class c
{
public:
    void a(int b)
    {
        std::cout << b;
    }
};

int main()
{
    static ServerApp app;

//    std::thread(std::bind(&test)).detach();

//    int i = 0;
//    while(true)
//    {
//        me.push(i);
//        std::this_thread::sleep_for(std::chrono::milliseconds(250));
//        i++;
//    }

    return 0;
}
