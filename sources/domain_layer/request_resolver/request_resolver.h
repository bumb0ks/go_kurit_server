#ifndef REQUEST_RESOLVER_H
#define REQUEST_RESOLVER_H

#include <nlohmann/json.hpp>

using nlohmann::json;

namespace domain_layer
{
    typedef std::function< const json&(const json&) > resolve_type_func;

    class RequestResolver
    {
    public:
        explicit RequestResolver();
        ~RequestResolver();

        const json& resolve(const json&);

    private:
        void fillResolveFuncMap();

        const json& messageResolve(const json& payload);
        const json& contancsResolve(const json& payload);
        const json& newClientResolve(const json& payload);
        const json& registerResolve(const json& payload);
        const json& helloResolve(const json& payload);

    private:
        std::map< std::string, resolve_type_func> resolveFuncMap;
    };
}

#endif
