# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\RPI\pico-projects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\RPI\pico-projects\build

# Utility rule file for pwmpio_pwmpio_pio_h.

# Include the progress variables for this target.
include pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\progress.make

pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h: pio\pwmpio\pwmpio.pio.h
pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h: pioasm\pioasm.exe
	cd D:\RPI\pico-projects\build\pio\pwmpio
	cd D:\RPI\pico-projects\build

pio\pwmpio\pwmpio.pio.h: ..\pio\pwmpio\pwmpio.pio
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\RPI\pico-projects\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating pwmpio.pio.h"
	cd D:\RPI\pico-projects\build\pio\pwmpio
	..\..\pioasm\pioasm.exe -o c-sdk D:/RPI/pico-projects/pio/pwmpio/pwmpio.pio D:/RPI/pico-projects/build/pio/pwmpio/pwmpio.pio.h
	cd D:\RPI\pico-projects\build

pwmpio_pwmpio_pio_h: pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h
pwmpio_pwmpio_pio_h: pio\pwmpio\pwmpio.pio.h
pwmpio_pwmpio_pio_h: pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\build.make

.PHONY : pwmpio_pwmpio_pio_h

# Rule to build all files generated by this target.
pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\build: pwmpio_pwmpio_pio_h

.PHONY : pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\build

pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\clean:
	cd D:\RPI\pico-projects\build\pio\pwmpio
	$(CMAKE_COMMAND) -P CMakeFiles\pwmpio_pwmpio_pio_h.dir\cmake_clean.cmake
	cd D:\RPI\pico-projects\build
.PHONY : pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\clean

pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\RPI\pico-projects D:\RPI\pico-projects\pio\pwmpio D:\RPI\pico-projects\build D:\RPI\pico-projects\build\pio\pwmpio D:\RPI\pico-projects\build\pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : pio\pwmpio\CMakeFiles\pwmpio_pwmpio_pio_h.dir\depend
