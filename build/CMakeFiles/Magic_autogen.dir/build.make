# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = "E:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "E:/Program Files/CMake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:/Source/QtProject/Magic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:/Source/QtProject/Magic/build

# Utility rule file for Magic_autogen.

# Include the progress variables for this target.
include CMakeFiles/Magic_autogen.dir/progress.make

CMakeFiles/Magic_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target Magic"
	"E:/Program Files/CMake/bin/cmake.exe" -E cmake_autogen E:/Source/QtProject/Magic/build/CMakeFiles/Magic_autogen.dir/AutogenInfo.cmake RelWithDebInfo

Magic_autogen: CMakeFiles/Magic_autogen
Magic_autogen: CMakeFiles/Magic_autogen.dir/build.make

.PHONY : Magic_autogen

# Rule to build all files generated by this target.
CMakeFiles/Magic_autogen.dir/build: Magic_autogen

.PHONY : CMakeFiles/Magic_autogen.dir/build

CMakeFiles/Magic_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Magic_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Magic_autogen.dir/clean

CMakeFiles/Magic_autogen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Source/QtProject/Magic E:/Source/QtProject/Magic E:/Source/QtProject/Magic/build E:/Source/QtProject/Magic/build E:/Source/QtProject/Magic/build/CMakeFiles/Magic_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Magic_autogen.dir/depend

