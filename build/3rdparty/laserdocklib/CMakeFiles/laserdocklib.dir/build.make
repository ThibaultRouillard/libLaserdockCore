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
include 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/depend.make

# Include the progress variables for this target.
include 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/progress.make

# Include the compile flags for this target's objects.
include 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o: 3rdparty/laserdocklib/laserdocklib_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib/laserdocklib_autogen/mocs_compilation.cpp

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib/laserdocklib_autogen/mocs_compilation.cpp > CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.i

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib/laserdocklib_autogen/mocs_compilation.cpp -o CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.s

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o: ../3rdparty/laserdocklib/src/LaserdockDevice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice.cpp

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice.cpp > CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.i

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice.cpp -o CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.s

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o: ../3rdparty/laserdocklib/src/LaserdockDeviceManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager.cpp

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager.cpp > CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.i

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager.cpp -o CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.s

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o: ../3rdparty/laserdocklib/src/LaserdockDeviceManager_desktop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager_desktop.cpp

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager_desktop.cpp > CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.i

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDeviceManager_desktop.cpp -o CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.s

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/flags.make
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o: ../3rdparty/laserdocklib/src/LaserdockDevice_desktop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o -c /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice_desktop.cpp

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.i"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice_desktop.cpp > CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.i

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.s"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib/src/LaserdockDevice_desktop.cpp -o CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.s

# Object files for target laserdocklib
laserdocklib_OBJECTS = \
"CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o" \
"CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o" \
"CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o" \
"CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o"

# External object files for target laserdocklib
laserdocklib_EXTERNAL_OBJECTS =

3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/laserdocklib_autogen/mocs_compilation.cpp.o
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice.cpp.o
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager.cpp.o
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDeviceManager_desktop.cpp.o
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/src/LaserdockDevice_desktop.cpp.o
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/build.make
3rdparty/laserdocklib/liblaserdocklib.so: /home/thibault/Qt/5.15.2/gcc_64/lib/libQt5Core.so.5.15.2
3rdparty/laserdocklib/liblaserdocklib.so: ../3rdparty/laserdocklib/3rdparty/libusb/lib/linux/libusb-1.0.so
3rdparty/laserdocklib/liblaserdocklib.so: 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thibault/laser_ws/src/libLaserdockCore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library liblaserdocklib.so"
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/laserdocklib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/build: 3rdparty/laserdocklib/liblaserdocklib.so

.PHONY : 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/build

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/clean:
	cd /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib && $(CMAKE_COMMAND) -P CMakeFiles/laserdocklib.dir/cmake_clean.cmake
.PHONY : 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/clean

3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/depend:
	cd /home/thibault/laser_ws/src/libLaserdockCore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thibault/laser_ws/src/libLaserdockCore /home/thibault/laser_ws/src/libLaserdockCore/3rdparty/laserdocklib /home/thibault/laser_ws/src/libLaserdockCore/build /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib /home/thibault/laser_ws/src/libLaserdockCore/build/3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 3rdparty/laserdocklib/CMakeFiles/laserdocklib.dir/depend
