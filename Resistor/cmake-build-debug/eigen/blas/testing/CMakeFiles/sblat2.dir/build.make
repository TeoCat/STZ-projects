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
CMAKE_SOURCE_DIR = C:\Users\isaev\CLionProjects\Resistor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug

# Include any dependencies generated for this target.
include eigen/blas/testing/CMakeFiles/sblat2.dir/depend.make

# Include the progress variables for this target.
include eigen/blas/testing/CMakeFiles/sblat2.dir/progress.make

# Include the compile flags for this target's objects.
include eigen/blas/testing/CMakeFiles/sblat2.dir/flags.make

eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.obj: eigen/blas/testing/CMakeFiles/sblat2.dir/flags.make
eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.obj: eigen/blas/testing/CMakeFiles/sblat2.dir/includes_Fortran.rsp
eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.obj: ../eigen/blas/testing/sblat2.f
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.obj"
	cd /d C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c C:\Users\isaev\CLionProjects\Resistor\eigen\blas\testing\sblat2.f -o CMakeFiles\sblat2.dir\sblat2.f.obj

eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/sblat2.dir/sblat2.f.i"
	cd /d C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E C:\Users\isaev\CLionProjects\Resistor\eigen\blas\testing\sblat2.f > CMakeFiles\sblat2.dir\sblat2.f.i

eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/sblat2.dir/sblat2.f.s"
	cd /d C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gfortran.exe $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S C:\Users\isaev\CLionProjects\Resistor\eigen\blas\testing\sblat2.f -o CMakeFiles\sblat2.dir\sblat2.f.s

# Object files for target sblat2
sblat2_OBJECTS = \
"CMakeFiles/sblat2.dir/sblat2.f.obj"

# External object files for target sblat2
sblat2_EXTERNAL_OBJECTS =

eigen/blas/testing/sblat2.exe: eigen/blas/testing/CMakeFiles/sblat2.dir/sblat2.f.obj
eigen/blas/testing/sblat2.exe: eigen/blas/testing/CMakeFiles/sblat2.dir/build.make
eigen/blas/testing/sblat2.exe: eigen/blas/libeigen_blas.dll.a
eigen/blas/testing/sblat2.exe: eigen/blas/testing/CMakeFiles/sblat2.dir/linklibs.rsp
eigen/blas/testing/sblat2.exe: eigen/blas/testing/CMakeFiles/sblat2.dir/objects1.rsp
eigen/blas/testing/sblat2.exe: eigen/blas/testing/CMakeFiles/sblat2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable sblat2.exe"
	cd /d C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sblat2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
eigen/blas/testing/CMakeFiles/sblat2.dir/build: eigen/blas/testing/sblat2.exe

.PHONY : eigen/blas/testing/CMakeFiles/sblat2.dir/build

eigen/blas/testing/CMakeFiles/sblat2.dir/clean:
	cd /d C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing && $(CMAKE_COMMAND) -P CMakeFiles\sblat2.dir\cmake_clean.cmake
.PHONY : eigen/blas/testing/CMakeFiles/sblat2.dir/clean

eigen/blas/testing/CMakeFiles/sblat2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\isaev\CLionProjects\Resistor C:\Users\isaev\CLionProjects\Resistor\eigen\blas\testing C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing C:\Users\isaev\CLionProjects\Resistor\cmake-build-debug\eigen\blas\testing\CMakeFiles\sblat2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : eigen/blas/testing/CMakeFiles/sblat2.dir/depend

