# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Resistor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Resistor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Resistor.dir/flags.make

CMakeFiles/Resistor.dir/main.cpp.obj: CMakeFiles/Resistor.dir/flags.make
CMakeFiles/Resistor.dir/main.cpp.obj: CMakeFiles/Resistor.dir/includes_CXX.rsp
CMakeFiles/Resistor.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Resistor.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Resistor.dir\main.cpp.obj -c C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\main.cpp

CMakeFiles/Resistor.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Resistor.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\main.cpp > CMakeFiles\Resistor.dir\main.cpp.i

CMakeFiles/Resistor.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Resistor.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\main.cpp -o CMakeFiles\Resistor.dir\main.cpp.s

# Object files for target Resistor
Resistor_OBJECTS = \
"CMakeFiles/Resistor.dir/main.cpp.obj"

# External object files for target Resistor
Resistor_EXTERNAL_OBJECTS =

Resistor.exe: CMakeFiles/Resistor.dir/main.cpp.obj
Resistor.exe: CMakeFiles/Resistor.dir/build.make
Resistor.exe: CMakeFiles/Resistor.dir/linklibs.rsp
Resistor.exe: CMakeFiles/Resistor.dir/objects1.rsp
Resistor.exe: CMakeFiles/Resistor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Resistor.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Resistor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Resistor.dir/build: Resistor.exe

.PHONY : CMakeFiles/Resistor.dir/build

CMakeFiles/Resistor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Resistor.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Resistor.dir/clean

CMakeFiles/Resistor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug C:\Users\isaev\Documents\GitHub\STZ-projects\Resistor\cmake-build-debug\CMakeFiles\Resistor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Resistor.dir/depend

