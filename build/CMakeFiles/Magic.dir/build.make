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

# Include any dependencies generated for this target.
include CMakeFiles/Magic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Magic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Magic.dir/flags.make

Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../qml.qrc
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: CMakeFiles/Magic_autogen.dir/RCCqmlInfo.cmake
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../main.qml
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/MagicEdit.qml
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/MoveView.qml
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/MagicButton.qml
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Image/title_button_minimize.png
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Image/title_button_restore.png
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Image/title_button_maximize.png
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Image/title_button_close.png
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Image/title_button_h_close.png
Magic_autogen/EWIEGA46WW/qrc_qml.cpp: ../UI/Effects/Diffusion.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic RCC for qml.qrc"
	"E:/Program Files/CMake/bin/cmake.exe" -E cmake_autorcc E:/Source/QtProject/Magic/build/CMakeFiles/Magic_autogen.dir/RCCqmlInfo.cmake RelWithDebInfo

CMakeFiles/Magic.dir/main.cpp.obj: CMakeFiles/Magic.dir/flags.make
CMakeFiles/Magic.dir/main.cpp.obj: CMakeFiles/Magic.dir/includes_CXX.rsp
CMakeFiles/Magic.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Magic.dir/main.cpp.obj"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Magic.dir/main.cpp.obj -c E:/Source/QtProject/Magic/main.cpp

CMakeFiles/Magic.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Magic.dir/main.cpp.i"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/Source/QtProject/Magic/main.cpp > CMakeFiles/Magic.dir/main.cpp.i

CMakeFiles/Magic.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Magic.dir/main.cpp.s"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/Source/QtProject/Magic/main.cpp -o CMakeFiles/Magic.dir/main.cpp.s

CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj: CMakeFiles/Magic.dir/flags.make
CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj: CMakeFiles/Magic.dir/includes_CXX.rsp
CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj: Magic_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj -c E:/Source/QtProject/Magic/build/Magic_autogen/mocs_compilation.cpp

CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.i"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/Source/QtProject/Magic/build/Magic_autogen/mocs_compilation.cpp > CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.i

CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.s"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/Source/QtProject/Magic/build/Magic_autogen/mocs_compilation.cpp -o CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.s

CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj: CMakeFiles/Magic.dir/flags.make
CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj: CMakeFiles/Magic.dir/includes_CXX.rsp
CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj: Magic_autogen/EWIEGA46WW/qrc_qml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj -c E:/Source/QtProject/Magic/build/Magic_autogen/EWIEGA46WW/qrc_qml.cpp

CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.i"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:/Source/QtProject/Magic/build/Magic_autogen/EWIEGA46WW/qrc_qml.cpp > CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.i

CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.s"
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:/Source/QtProject/Magic/build/Magic_autogen/EWIEGA46WW/qrc_qml.cpp -o CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.s

# Object files for target Magic
Magic_OBJECTS = \
"CMakeFiles/Magic.dir/main.cpp.obj" \
"CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj" \
"CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj"

# External object files for target Magic
Magic_EXTERNAL_OBJECTS =

Magic.exe: CMakeFiles/Magic.dir/main.cpp.obj
Magic.exe: CMakeFiles/Magic.dir/Magic_autogen/mocs_compilation.cpp.obj
Magic.exe: CMakeFiles/Magic.dir/Magic_autogen/EWIEGA46WW/qrc_qml.cpp.obj
Magic.exe: CMakeFiles/Magic.dir/build.make
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libQt5Quick.a
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libQt5Qml.a
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libQt5Network.a
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libQt5Gui.a
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libQt5Core.a
Magic.exe: E:/Qt/Qt5.12.6/5.12.6/mingw73_64/lib/libqtmain.a
Magic.exe: CMakeFiles/Magic.dir/linklibs.rsp
Magic.exe: CMakeFiles/Magic.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:/Source/QtProject/Magic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Magic.exe"
	"E:/Program Files/CMake/bin/cmake.exe" -E remove -f CMakeFiles/Magic.dir/objects.a
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/ar.exe cr CMakeFiles/Magic.dir/objects.a @CMakeFiles/Magic.dir/objects1.rsp
	E:/Qt/Qt5.12.6/Tools/mingw730_64/bin/c++.exe -O2 -g -DNDEBUG  -mwindows -Wl,--whole-archive CMakeFiles/Magic.dir/objects.a -Wl,--no-whole-archive  -o Magic.exe -Wl,--out-implib,libMagic.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/Magic.dir/linklibs.rsp

# Rule to build all files generated by this target.
CMakeFiles/Magic.dir/build: Magic.exe

.PHONY : CMakeFiles/Magic.dir/build

CMakeFiles/Magic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Magic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Magic.dir/clean

CMakeFiles/Magic.dir/depend: Magic_autogen/EWIEGA46WW/qrc_qml.cpp
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Source/QtProject/Magic E:/Source/QtProject/Magic E:/Source/QtProject/Magic/build E:/Source/QtProject/Magic/build E:/Source/QtProject/Magic/build/CMakeFiles/Magic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Magic.dir/depend

