cmake_minimum_required(VERSION 3.9)
project(go_kurit_server C CXX)

set(CMAKE_C_STANDARD 14)
set(CMAKE_CXX_STANDARD 14)
# set(CMAKE_EXE_LINKER_FLAGS -static)

###############################################################################
## file globbing ##############################################################
###############################################################################

# these instructions search the directory tree when cmake is
# invoked and put all files that match the pattern in the variables
# `sources` and `data`

file(GLOB_RECURSE DOMAIN_SOURCES sources/domain_layer/*.cpp sources/domain_layer/*.h)
file(GLOB_RECURSE MAIN_SOURCES sources/main/main.cpp)
file(GLOB_RECURSE NETWORK_SOURCES sources/network_layer/*.cpp sources/network_layer/*.h)

set( SOURCES ${DOMAIN_SOURCES} ${MAIN_SOURCES} ${NETWORK_SOURCES} )

file(GLOB_RECURSE SOURCES_TEST tests/*.cpp)

#file(GLOB_RECURSE DATA resources/*)

# you can use set(sources src/main.cpp) etc if you don't want to
# use globing to find files automatically

###############################################################################
## target definitions #########################################################
###############################################################################

# add the data to the target, so it becomes visible in some IDE

add_executable(${PROJECT_NAME} ${SOURCES} ${DATA})



# just for example add some compiler flags
target_compile_options(${PROJECT_NAME} PUBLIC -g -std=c++14 -Wall -Wfloat-conversion)

# this lets me include files relative to the root src dir with a <> pair
target_include_directories(${PROJECT_NAME} PUBLIC sources)

#target_link_libraries(${PROJECT_NAME} -pthread)

# this copies all resource files in the build directory
# we need this, because we want to work with paths relative to the executable

#file(COPY ${DATA} DESTINATION resources)

###############################################################################
## dependencies ###############################################################
###############################################################################

find_package(nlohmann_json 3.3.0 REQUIRED)

add_library(nlohmann_json INTERFACE)

target_link_libraries(${PROJECT_NAME} PUBLIC nlohmann_json::nlohmann_json -pthread)

# this defines the variables Boost_LIBRARIES that contain all library names
# that we need to link to

# find_package(Boost 1.36.0 COMPONENTS filesystem system) #REQUIRED)

#if(BOOST_FOUND)

#    target_link_libraries(${PROJECT_NAME} PUBLIC
#            ${Boost_LIBRARIES}
#            #         here you can add any library dependencies
#            )

#endif()

###############################################################################
## testing ####################################################################
###############################################################################

# this is for our testing framework
# we don't add REQUIRED because it's just for testing

enable_testing()

find_package(GTest)

if(GTEST_FOUND AND BUILD_TESTS)
    add_executable(unit_tests ${SOURCES_TEST} ${DOMAIN_SOURCES} ${NETWORK_SOURCES})

    # we add this define to prevent collision with the main
    # this might be better solved by not adding the source with the main to the
    # testing target
    target_compile_definitions(unit_tests PUBLIC UNIT_TESTS)

    # this allows us to use our executable as a link library
    # therefore we can inherit all compiler options and library dependencies
    set_target_properties(${PROJECT_NAME} PROPERTIES ENABLE_EXPORTS on)

    set_target_properties(${PROJECT_NAME} PROPERTIES COMPILE_FLAGS -pthread LINK_FLAGS -pthread)

    target_link_libraries(unit_tests PUBLIC
            ${GTEST_BOTH_LIBRARIES}
            ${PROJECT_NAME}
            )

#    target_include_directories(unit_tests PUBLIC
#            ${GTEST_INCLUDE_DIRS} # doesn't do anything on Linux
#            )
endif()

###############################################################################
## packaging ##################################################################
###############################################################################

# all install commands get the same destination. this allows us to use paths
# relative to the executable.
install(TARGETS ${PROJECT_NAME} DESTINATION ${PROJECT_SOURCE_DIR}/result)
# this is basically a repeat of the file copy instruction that copies the
# resources in the build directory, but here we tell cmake that we want it
# in the package

#install(DIRECTORY resources DESTINATION ${PROJECT_NAME}_destination)

# now comes everything we need, to create a package
# there are a lot more variables you can set, and some
# you need to set for some package types, but we want to
# be minimal here
set(CPACK_PACKAGE_NAME ${PROJECT_NAME})
set(CPACK_PACKAGE_VERSION "0.0.1")

# we don't want to split our program up into several things
set(CPACK_MONOLITHIC_INSTALL 1)

# This must be last
include(CPack)
