# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/zyb/cv/Vision_wonder_git/Image_diff

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyb/cv/Vision_wonder_git/Image_diff

# Include any dependencies generated for this target.
include CMakeFiles/img_diff.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/img_diff.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/img_diff.dir/flags.make

CMakeFiles/img_diff.dir/img_diff_demo.cpp.o: CMakeFiles/img_diff.dir/flags.make
CMakeFiles/img_diff.dir/img_diff_demo.cpp.o: img_diff_demo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zyb/cv/Vision_wonder_git/Image_diff/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/img_diff.dir/img_diff_demo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/img_diff.dir/img_diff_demo.cpp.o -c /home/zyb/cv/Vision_wonder_git/Image_diff/img_diff_demo.cpp

CMakeFiles/img_diff.dir/img_diff_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/img_diff.dir/img_diff_demo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zyb/cv/Vision_wonder_git/Image_diff/img_diff_demo.cpp > CMakeFiles/img_diff.dir/img_diff_demo.cpp.i

CMakeFiles/img_diff.dir/img_diff_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/img_diff.dir/img_diff_demo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zyb/cv/Vision_wonder_git/Image_diff/img_diff_demo.cpp -o CMakeFiles/img_diff.dir/img_diff_demo.cpp.s

CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.requires:
.PHONY : CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.requires

CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.provides: CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.requires
	$(MAKE) -f CMakeFiles/img_diff.dir/build.make CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.provides.build
.PHONY : CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.provides

CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.provides.build: CMakeFiles/img_diff.dir/img_diff_demo.cpp.o

# Object files for target img_diff
img_diff_OBJECTS = \
"CMakeFiles/img_diff.dir/img_diff_demo.cpp.o"

# External object files for target img_diff
img_diff_EXTERNAL_OBJECTS =

img_diff: CMakeFiles/img_diff.dir/img_diff_demo.cpp.o
img_diff: CMakeFiles/img_diff.dir/build.make
img_diff: /usr/local/lib/libopencv_videostab.so.2.4.11
img_diff: /usr/local/lib/libopencv_video.so.2.4.11
img_diff: /usr/local/lib/libopencv_ts.a
img_diff: /usr/local/lib/libopencv_superres.so.2.4.11
img_diff: /usr/local/lib/libopencv_stitching.so.2.4.11
img_diff: /usr/local/lib/libopencv_photo.so.2.4.11
img_diff: /usr/local/lib/libopencv_ocl.so.2.4.11
img_diff: /usr/local/lib/libopencv_objdetect.so.2.4.11
img_diff: /usr/local/lib/libopencv_nonfree.so.2.4.11
img_diff: /usr/local/lib/libopencv_ml.so.2.4.11
img_diff: /usr/local/lib/libopencv_legacy.so.2.4.11
img_diff: /usr/local/lib/libopencv_imgproc.so.2.4.11
img_diff: /usr/local/lib/libopencv_highgui.so.2.4.11
img_diff: /usr/local/lib/libopencv_gpu.so.2.4.11
img_diff: /usr/local/lib/libopencv_flann.so.2.4.11
img_diff: /usr/local/lib/libopencv_features2d.so.2.4.11
img_diff: /usr/local/lib/libopencv_core.so.2.4.11
img_diff: /usr/local/lib/libopencv_contrib.so.2.4.11
img_diff: /usr/local/lib/libopencv_calib3d.so.2.4.11
img_diff: /usr/local/lib/libopencv_videostab.so.2.4.11
img_diff: /usr/local/lib/libopencv_video.so.2.4.11
img_diff: /usr/local/lib/libopencv_ts.a
img_diff: /usr/local/lib/libopencv_superres.so.2.4.11
img_diff: /usr/local/lib/libopencv_stitching.so.2.4.11
img_diff: /usr/local/lib/libopencv_photo.so.2.4.11
img_diff: /usr/local/lib/libopencv_ocl.so.2.4.11
img_diff: /usr/local/lib/libopencv_objdetect.so.2.4.11
img_diff: /usr/local/lib/libopencv_nonfree.so.2.4.11
img_diff: /usr/local/lib/libopencv_ml.so.2.4.11
img_diff: /usr/local/lib/libopencv_legacy.so.2.4.11
img_diff: /usr/local/lib/libopencv_imgproc.so.2.4.11
img_diff: /usr/local/lib/libopencv_highgui.so.2.4.11
img_diff: /usr/local/lib/libopencv_gpu.so.2.4.11
img_diff: /usr/local/lib/libopencv_flann.so.2.4.11
img_diff: /usr/local/lib/libopencv_features2d.so.2.4.11
img_diff: /usr/local/lib/libopencv_core.so.2.4.11
img_diff: /usr/local/lib/libopencv_contrib.so.2.4.11
img_diff: /usr/local/lib/libopencv_calib3d.so.2.4.11
img_diff: /usr/lib/x86_64-linux-gnu/libGLU.so
img_diff: /usr/lib/x86_64-linux-gnu/libGL.so
img_diff: /usr/lib/x86_64-linux-gnu/libSM.so
img_diff: /usr/lib/x86_64-linux-gnu/libICE.so
img_diff: /usr/lib/x86_64-linux-gnu/libX11.so
img_diff: /usr/lib/x86_64-linux-gnu/libXext.so
img_diff: /usr/local/lib/libopencv_nonfree.so.2.4.11
img_diff: /usr/local/lib/libopencv_ocl.so.2.4.11
img_diff: /usr/local/lib/libopencv_gpu.so.2.4.11
img_diff: /usr/local/lib/libopencv_photo.so.2.4.11
img_diff: /usr/local/lib/libopencv_objdetect.so.2.4.11
img_diff: /usr/local/lib/libopencv_legacy.so.2.4.11
img_diff: /usr/local/lib/libopencv_video.so.2.4.11
img_diff: /usr/local/lib/libopencv_ml.so.2.4.11
img_diff: /usr/local/lib/libopencv_calib3d.so.2.4.11
img_diff: /usr/local/lib/libopencv_features2d.so.2.4.11
img_diff: /usr/local/lib/libopencv_highgui.so.2.4.11
img_diff: /usr/local/lib/libopencv_imgproc.so.2.4.11
img_diff: /usr/local/lib/libopencv_flann.so.2.4.11
img_diff: /usr/local/lib/libopencv_core.so.2.4.11
img_diff: CMakeFiles/img_diff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable img_diff"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/img_diff.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/img_diff.dir/build: img_diff
.PHONY : CMakeFiles/img_diff.dir/build

CMakeFiles/img_diff.dir/requires: CMakeFiles/img_diff.dir/img_diff_demo.cpp.o.requires
.PHONY : CMakeFiles/img_diff.dir/requires

CMakeFiles/img_diff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/img_diff.dir/cmake_clean.cmake
.PHONY : CMakeFiles/img_diff.dir/clean

CMakeFiles/img_diff.dir/depend:
	cd /home/zyb/cv/Vision_wonder_git/Image_diff && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyb/cv/Vision_wonder_git/Image_diff /home/zyb/cv/Vision_wonder_git/Image_diff /home/zyb/cv/Vision_wonder_git/Image_diff /home/zyb/cv/Vision_wonder_git/Image_diff /home/zyb/cv/Vision_wonder_git/Image_diff/CMakeFiles/img_diff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/img_diff.dir/depend

