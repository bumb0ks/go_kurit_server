# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bumb0ks/Projects/go_kurit_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bumb0ks/Projects/go_kurit_server/build

# Include any dependencies generated for this target.
include CMakeFiles/go_kurit_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/go_kurit_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/go_kurit_server.dir/flags.make

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o: ../sources/domain_layer/json_parser/json_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/json_parser/json_parser.cpp

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/json_parser/json_parser.cpp > CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.i

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/json_parser/json_parser.cpp -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.s

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o


CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o: ../sources/domain_layer/message_handler/message_handler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_handler/message_handler.cpp

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_handler/message_handler.cpp > CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.i

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_handler/message_handler.cpp -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.s

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o


CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o: ../sources/domain_layer/message_manager/message_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_manager/message_manager.cpp

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_manager/message_manager.cpp > CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.i

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/message_manager/message_manager.cpp -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.s

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o


CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o: ../sources/domain_layer/request_resolver/request_resolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/request_resolver/request_resolver.cpp

CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/request_resolver/request_resolver.cpp > CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.i

CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/request_resolver/request_resolver.cpp -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.s

CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o


CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o: ../sources/domain_layer/server_app/server_app.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/server_app/server_app.cpp

CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/server_app/server_app.cpp > CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.i

CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/domain_layer/server_app/server_app.cpp -o CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.s

CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o


CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o: ../sources/main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/main/main.cpp

CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/main/main.cpp > CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.i

CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/main/main.cpp -o CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.s

CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o


CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o: ../sources/network_layer/client_connection/client_connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/client_connection/client_connection.cpp

CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/client_connection/client_connection.cpp > CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.i

CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/client_connection/client_connection.cpp -o CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.s

CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o


CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o: CMakeFiles/go_kurit_server.dir/flags.make
CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o: ../sources/network_layer/network_manager/network_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o -c /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/network_manager/network_manager.cpp

CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/network_manager/network_manager.cpp > CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.i

CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumb0ks/Projects/go_kurit_server/sources/network_layer/network_manager/network_manager.cpp -o CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.s

CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.requires:

.PHONY : CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.requires

CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.provides: CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.requires
	$(MAKE) -f CMakeFiles/go_kurit_server.dir/build.make CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.provides.build
.PHONY : CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.provides

CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.provides.build: CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o


# Object files for target go_kurit_server
go_kurit_server_OBJECTS = \
"CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o" \
"CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o"

# External object files for target go_kurit_server
go_kurit_server_EXTERNAL_OBJECTS =

go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o
go_kurit_server: CMakeFiles/go_kurit_server.dir/build.make
go_kurit_server: CMakeFiles/go_kurit_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable go_kurit_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/go_kurit_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/go_kurit_server.dir/build: go_kurit_server

.PHONY : CMakeFiles/go_kurit_server.dir/build

CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/domain_layer/json_parser/json_parser.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_handler/message_handler.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/domain_layer/message_manager/message_manager.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/domain_layer/request_resolver/request_resolver.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/domain_layer/server_app/server_app.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/main/main.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/network_layer/client_connection/client_connection.cpp.o.requires
CMakeFiles/go_kurit_server.dir/requires: CMakeFiles/go_kurit_server.dir/sources/network_layer/network_manager/network_manager.cpp.o.requires

.PHONY : CMakeFiles/go_kurit_server.dir/requires

CMakeFiles/go_kurit_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/go_kurit_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/go_kurit_server.dir/clean

CMakeFiles/go_kurit_server.dir/depend:
	cd /home/bumb0ks/Projects/go_kurit_server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bumb0ks/Projects/go_kurit_server /home/bumb0ks/Projects/go_kurit_server /home/bumb0ks/Projects/go_kurit_server/build /home/bumb0ks/Projects/go_kurit_server/build /home/bumb0ks/Projects/go_kurit_server/build/CMakeFiles/go_kurit_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/go_kurit_server.dir/depend
