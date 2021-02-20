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

# Utility rule file for bs2_default_padded_checksummed_asm.

# Include the progress variables for this target.
include pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\progress.make

pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm: pico_sdk\src\rp2_common\boot_stage2\bs2_default_padded_checksummed.S
	cd D:\RPI\pico-projects\build\pico_sdk\src\rp2_common\boot_stage2
	cd D:\RPI\pico-projects\build

pico_sdk\src\rp2_common\boot_stage2\bs2_default_padded_checksummed.S:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\RPI\pico-projects\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating bs2_default_padded_checksummed.S"
	cd D:\RPI\pico-projects\build\pico_sdk\src\rp2_common\boot_stage2
	C:\Users\Ben\AppData\Local\Programs\Python\Python38\python.exe D:/RPI/pico-sdk/src/rp2_common/boot_stage2/pad_checksum -s 0xffffffff D:/RPI/pico-projects/build/pico_sdk/src/rp2_common/boot_stage2/bs2_default.bin D:/RPI/pico-projects/build/pico_sdk/src/rp2_common/boot_stage2/bs2_default_padded_checksummed.S
	cd D:\RPI\pico-projects\build

bs2_default_padded_checksummed_asm: pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm
bs2_default_padded_checksummed_asm: pico_sdk\src\rp2_common\boot_stage2\bs2_default_padded_checksummed.S
bs2_default_padded_checksummed_asm: pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\build.make

.PHONY : bs2_default_padded_checksummed_asm

# Rule to build all files generated by this target.
pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\build: bs2_default_padded_checksummed_asm

.PHONY : pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\build

pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\clean:
	cd D:\RPI\pico-projects\build\pico_sdk\src\rp2_common\boot_stage2
	$(CMAKE_COMMAND) -P CMakeFiles\bs2_default_padded_checksummed_asm.dir\cmake_clean.cmake
	cd D:\RPI\pico-projects\build
.PHONY : pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\clean

pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\RPI\pico-projects D:\RPI\pico-sdk\src\rp2_common\boot_stage2 D:\RPI\pico-projects\build D:\RPI\pico-projects\build\pico_sdk\src\rp2_common\boot_stage2 D:\RPI\pico-projects\build\pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : pico_sdk\src\rp2_common\boot_stage2\CMakeFiles\bs2_default_padded_checksummed_asm.dir\depend

