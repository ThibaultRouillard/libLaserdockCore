# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /home/thibault/.local/lib/python2.7/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/thibault/.local/lib/python2.7/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thibault/laser_ws/src/libLaserdockCore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thibault/laser_ws/src/libLaserdockCore/build

# Include any dependencies generated for this target.
include 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/depend.make

# Include the progress variables for this target.
include 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/flags.make

3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o: 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/flags.make
3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o: ../3rdparty/simplecrypt/simplecrypt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/simplecrypt/simplecrypt.cpp

3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simplecrypt.dir/simplecrypt.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/simplecrypt/simplecrypt.cpp > CMakeFiles/simplecrypt.dir/simplecrypt.cpp.i

3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simplecrypt.dir/simplecrypt.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/simplecrypt/simplecrypt.cpp -o CMakeFiles/simplecrypt.dir/simplecrypt.cpp.s

# Object files for target simplecrypt
simplecrypt_OBJECTS = \
"CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o"

# External object files for target simplecrypt
simplecrypt_EXTERNAL_OBJECTS =

3rdparty/simplecrypt/libsimplecrypt.a: 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/simplecrypt.cpp.o
3rdparty/simplecrypt/libsimplecrypt.a: 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/build.make
3rdparty/simplecrypt/libsimplecrypt.a: 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsimplecrypt.a"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && $(CMAKE_COMMAND) -P CMakeFiles/simplecrypt.dir/cmake_clean_target.cmake
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simplecrypt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/build: 3rdparty/simplecrypt/libsimplecrypt.a

.PHONY : 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/build

3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/clean:
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt && $(CMAKE_COMMAND) -P CMakeFiles/simplecrypt.dir/cmake_clean.cmake
.PHONY : 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/clean

3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/depend:
	cd /home/thibault/laser_ws/src/libLaserdockCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thibault/laser_ws/src/libLaserdockCore /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/simplecrypt /home/thibault/laser_ws/src/libLaserdockCore/build /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/simplecrypt/CMakeFiles/simplecrypt.dir/depend
