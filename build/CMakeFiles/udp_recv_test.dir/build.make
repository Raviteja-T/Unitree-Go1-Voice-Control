# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build

# Include any dependencies generated for this target.
include CMakeFiles/udp_recv_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/udp_recv_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/udp_recv_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udp_recv_test.dir/flags.make

CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o: CMakeFiles/udp_recv_test.dir/flags.make
CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o: ../examples/multi_pc_udp_recv.cpp
CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o: CMakeFiles/udp_recv_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o -MF CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o.d -o CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o -c /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/examples/multi_pc_udp_recv.cpp

CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/examples/multi_pc_udp_recv.cpp > CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.i

CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/examples/multi_pc_udp_recv.cpp -o CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.s

# Object files for target udp_recv_test
udp_recv_test_OBJECTS = \
"CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o"

# External object files for target udp_recv_test
udp_recv_test_EXTERNAL_OBJECTS =

udp_recv_test: CMakeFiles/udp_recv_test.dir/examples/multi_pc_udp_recv.cpp.o
udp_recv_test: CMakeFiles/udp_recv_test.dir/build.make
udp_recv_test: CMakeFiles/udp_recv_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable udp_recv_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp_recv_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udp_recv_test.dir/build: udp_recv_test
.PHONY : CMakeFiles/udp_recv_test.dir/build

CMakeFiles/udp_recv_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udp_recv_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udp_recv_test.dir/clean

CMakeFiles/udp_recv_test.dir/depend:
	cd /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build /home/emcode/Desktop/gitrepo/Unitree-Go1-Voice-Control/build/CMakeFiles/udp_recv_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udp_recv_test.dir/depend

