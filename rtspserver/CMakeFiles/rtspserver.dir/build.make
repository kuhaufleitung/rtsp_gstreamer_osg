# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver

# Include any dependencies generated for this target.
include CMakeFiles/rtspserver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rtspserver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rtspserver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rtspserver.dir/flags.make

CMakeFiles/rtspserver.dir/main.cpp.o: CMakeFiles/rtspserver.dir/flags.make
CMakeFiles/rtspserver.dir/main.cpp.o: main.cpp
CMakeFiles/rtspserver.dir/main.cpp.o: CMakeFiles/rtspserver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rtspserver.dir/main.cpp.o"
	/usr/bin/gcc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rtspserver.dir/main.cpp.o -MF CMakeFiles/rtspserver.dir/main.cpp.o.d -o CMakeFiles/rtspserver.dir/main.cpp.o -c /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/main.cpp

CMakeFiles/rtspserver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/rtspserver.dir/main.cpp.i"
	/usr/bin/gcc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/main.cpp > CMakeFiles/rtspserver.dir/main.cpp.i

CMakeFiles/rtspserver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/rtspserver.dir/main.cpp.s"
	/usr/bin/gcc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/main.cpp -o CMakeFiles/rtspserver.dir/main.cpp.s

# Object files for target rtspserver
rtspserver_OBJECTS = \
"CMakeFiles/rtspserver.dir/main.cpp.o"

# External object files for target rtspserver
rtspserver_EXTERNAL_OBJECTS =

rtspserver: CMakeFiles/rtspserver.dir/main.cpp.o
rtspserver: CMakeFiles/rtspserver.dir/build.make
rtspserver: CMakeFiles/rtspserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rtspserver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rtspserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rtspserver.dir/build: rtspserver
.PHONY : CMakeFiles/rtspserver.dir/build

CMakeFiles/rtspserver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rtspserver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rtspserver.dir/clean

CMakeFiles/rtspserver.dir/depend:
	cd /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver /home/fabian/CLionProjects/rtsp_gstreamer_osg/rtspserver/CMakeFiles/rtspserver.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/rtspserver.dir/depend

