# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/caron/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7223.86/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/caron/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/201.7223.86/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caron/Projets/E2022_Chess

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caron/Projets/E2022_Chess/cmake-build-debug

# Include any dependencies generated for this target.
include src/chessengine/board/CMakeFiles/BOARD.dir/depend.make

# Include the progress variables for this target.
include src/chessengine/board/CMakeFiles/BOARD.dir/progress.make

# Include the compile flags for this target's objects.
include src/chessengine/board/CMakeFiles/BOARD.dir/flags.make

src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.o: src/chessengine/board/CMakeFiles/BOARD.dir/flags.make
src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.o: ../src/chessengine/board/position.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caron/Projets/E2022_Chess/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.o"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BOARD.dir/position.cc.o -c /home/caron/Projets/E2022_Chess/src/chessengine/board/position.cc

src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BOARD.dir/position.cc.i"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caron/Projets/E2022_Chess/src/chessengine/board/position.cc > CMakeFiles/BOARD.dir/position.cc.i

src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BOARD.dir/position.cc.s"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caron/Projets/E2022_Chess/src/chessengine/board/position.cc -o CMakeFiles/BOARD.dir/position.cc.s

src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.o: src/chessengine/board/CMakeFiles/BOARD.dir/flags.make
src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.o: ../src/chessengine/board/chessboard-impl.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caron/Projets/E2022_Chess/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.o"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BOARD.dir/chessboard-impl.cc.o -c /home/caron/Projets/E2022_Chess/src/chessengine/board/chessboard-impl.cc

src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BOARD.dir/chessboard-impl.cc.i"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caron/Projets/E2022_Chess/src/chessengine/board/chessboard-impl.cc > CMakeFiles/BOARD.dir/chessboard-impl.cc.i

src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BOARD.dir/chessboard-impl.cc.s"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caron/Projets/E2022_Chess/src/chessengine/board/chessboard-impl.cc -o CMakeFiles/BOARD.dir/chessboard-impl.cc.s

src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.o: src/chessengine/board/CMakeFiles/BOARD.dir/flags.make
src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.o: ../src/chessengine/board/move.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caron/Projets/E2022_Chess/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.o"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BOARD.dir/move.cc.o -c /home/caron/Projets/E2022_Chess/src/chessengine/board/move.cc

src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BOARD.dir/move.cc.i"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caron/Projets/E2022_Chess/src/chessengine/board/move.cc > CMakeFiles/BOARD.dir/move.cc.i

src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BOARD.dir/move.cc.s"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caron/Projets/E2022_Chess/src/chessengine/board/move.cc -o CMakeFiles/BOARD.dir/move.cc.s

# Object files for target BOARD
BOARD_OBJECTS = \
"CMakeFiles/BOARD.dir/position.cc.o" \
"CMakeFiles/BOARD.dir/chessboard-impl.cc.o" \
"CMakeFiles/BOARD.dir/move.cc.o"

# External object files for target BOARD
BOARD_EXTERNAL_OBJECTS =

src/chessengine/board/libBOARD.a: src/chessengine/board/CMakeFiles/BOARD.dir/position.cc.o
src/chessengine/board/libBOARD.a: src/chessengine/board/CMakeFiles/BOARD.dir/chessboard-impl.cc.o
src/chessengine/board/libBOARD.a: src/chessengine/board/CMakeFiles/BOARD.dir/move.cc.o
src/chessengine/board/libBOARD.a: src/chessengine/board/CMakeFiles/BOARD.dir/build.make
src/chessengine/board/libBOARD.a: src/chessengine/board/CMakeFiles/BOARD.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caron/Projets/E2022_Chess/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libBOARD.a"
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && $(CMAKE_COMMAND) -P CMakeFiles/BOARD.dir/cmake_clean_target.cmake
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BOARD.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/chessengine/board/CMakeFiles/BOARD.dir/build: src/chessengine/board/libBOARD.a

.PHONY : src/chessengine/board/CMakeFiles/BOARD.dir/build

src/chessengine/board/CMakeFiles/BOARD.dir/clean:
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board && $(CMAKE_COMMAND) -P CMakeFiles/BOARD.dir/cmake_clean.cmake
.PHONY : src/chessengine/board/CMakeFiles/BOARD.dir/clean

src/chessengine/board/CMakeFiles/BOARD.dir/depend:
	cd /home/caron/Projets/E2022_Chess/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caron/Projets/E2022_Chess /home/caron/Projets/E2022_Chess/src/chessengine/board /home/caron/Projets/E2022_Chess/cmake-build-debug /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board /home/caron/Projets/E2022_Chess/cmake-build-debug/src/chessengine/board/CMakeFiles/BOARD.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/chessengine/board/CMakeFiles/BOARD.dir/depend
