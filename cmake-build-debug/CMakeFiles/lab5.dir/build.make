# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /opt/clion-2018.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/besanouno/Projects/uczelnia/ZAISD/lab5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab5.dir/flags.make

CMakeFiles/lab5.dir/encode.cpp.o: CMakeFiles/lab5.dir/flags.make
CMakeFiles/lab5.dir/encode.cpp.o: ../encode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab5.dir/encode.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab5.dir/encode.cpp.o -c /home/besanouno/Projects/uczelnia/ZAISD/lab5/encode.cpp

CMakeFiles/lab5.dir/encode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab5.dir/encode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/besanouno/Projects/uczelnia/ZAISD/lab5/encode.cpp > CMakeFiles/lab5.dir/encode.cpp.i

CMakeFiles/lab5.dir/encode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab5.dir/encode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/besanouno/Projects/uczelnia/ZAISD/lab5/encode.cpp -o CMakeFiles/lab5.dir/encode.cpp.s

CMakeFiles/lab5.dir/decode.cpp.o: CMakeFiles/lab5.dir/flags.make
CMakeFiles/lab5.dir/decode.cpp.o: ../decode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab5.dir/decode.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab5.dir/decode.cpp.o -c /home/besanouno/Projects/uczelnia/ZAISD/lab5/decode.cpp

CMakeFiles/lab5.dir/decode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab5.dir/decode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/besanouno/Projects/uczelnia/ZAISD/lab5/decode.cpp > CMakeFiles/lab5.dir/decode.cpp.i

CMakeFiles/lab5.dir/decode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab5.dir/decode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/besanouno/Projects/uczelnia/ZAISD/lab5/decode.cpp -o CMakeFiles/lab5.dir/decode.cpp.s

CMakeFiles/lab5.dir/kaldus.cpp.o: CMakeFiles/lab5.dir/flags.make
CMakeFiles/lab5.dir/kaldus.cpp.o: ../kaldus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lab5.dir/kaldus.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab5.dir/kaldus.cpp.o -c /home/besanouno/Projects/uczelnia/ZAISD/lab5/kaldus.cpp

CMakeFiles/lab5.dir/kaldus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab5.dir/kaldus.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/besanouno/Projects/uczelnia/ZAISD/lab5/kaldus.cpp > CMakeFiles/lab5.dir/kaldus.cpp.i

CMakeFiles/lab5.dir/kaldus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab5.dir/kaldus.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/besanouno/Projects/uczelnia/ZAISD/lab5/kaldus.cpp -o CMakeFiles/lab5.dir/kaldus.cpp.s

# Object files for target lab5
lab5_OBJECTS = \
"CMakeFiles/lab5.dir/encode.cpp.o" \
"CMakeFiles/lab5.dir/decode.cpp.o" \
"CMakeFiles/lab5.dir/kaldus.cpp.o"

# External object files for target lab5
lab5_EXTERNAL_OBJECTS =

lab5: CMakeFiles/lab5.dir/encode.cpp.o
lab5: CMakeFiles/lab5.dir/decode.cpp.o
lab5: CMakeFiles/lab5.dir/kaldus.cpp.o
lab5: CMakeFiles/lab5.dir/build.make
lab5: CMakeFiles/lab5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable lab5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab5.dir/build: lab5

.PHONY : CMakeFiles/lab5.dir/build

CMakeFiles/lab5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab5.dir/clean

CMakeFiles/lab5.dir/depend:
	cd /home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/besanouno/Projects/uczelnia/ZAISD/lab5 /home/besanouno/Projects/uczelnia/ZAISD/lab5 /home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug /home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug /home/besanouno/Projects/uczelnia/ZAISD/lab5/cmake-build-debug/CMakeFiles/lab5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab5.dir/depend

