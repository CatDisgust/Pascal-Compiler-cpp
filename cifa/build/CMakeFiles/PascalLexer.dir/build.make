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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build

# Include any dependencies generated for this target.
include CMakeFiles/PascalLexer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PascalLexer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PascalLexer.dir/flags.make

CMakeFiles/PascalLexer.dir/src/lexer.cpp.o: CMakeFiles/PascalLexer.dir/flags.make
CMakeFiles/PascalLexer.dir/src/lexer.cpp.o: ../src/lexer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/PascalLexer.dir/src/lexer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalLexer.dir/src/lexer.cpp.o -c /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/lexer.cpp

CMakeFiles/PascalLexer.dir/src/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalLexer.dir/src/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/lexer.cpp > CMakeFiles/PascalLexer.dir/src/lexer.cpp.i

CMakeFiles/PascalLexer.dir/src/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalLexer.dir/src/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/lexer.cpp -o CMakeFiles/PascalLexer.dir/src/lexer.cpp.s

CMakeFiles/PascalLexer.dir/src/main.cpp.o: CMakeFiles/PascalLexer.dir/flags.make
CMakeFiles/PascalLexer.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PascalLexer.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalLexer.dir/src/main.cpp.o -c /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/main.cpp

CMakeFiles/PascalLexer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalLexer.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/main.cpp > CMakeFiles/PascalLexer.dir/src/main.cpp.i

CMakeFiles/PascalLexer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalLexer.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/main.cpp -o CMakeFiles/PascalLexer.dir/src/main.cpp.s

CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o: CMakeFiles/PascalLexer.dir/flags.make
CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o: ../src/minimize_dfa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o -c /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/minimize_dfa.cpp

CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/minimize_dfa.cpp > CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.i

CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/minimize_dfa.cpp -o CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.s

CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o: CMakeFiles/PascalLexer.dir/flags.make
CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o: ../src/nfa_to_dfa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o -c /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/nfa_to_dfa.cpp

CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/nfa_to_dfa.cpp > CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.i

CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/nfa_to_dfa.cpp -o CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.s

CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o: CMakeFiles/PascalLexer.dir/flags.make
CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o: ../src/regex_to_nfa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o -c /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/regex_to_nfa.cpp

CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/regex_to_nfa.cpp > CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.i

CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/src/regex_to_nfa.cpp -o CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.s

# Object files for target PascalLexer
PascalLexer_OBJECTS = \
"CMakeFiles/PascalLexer.dir/src/lexer.cpp.o" \
"CMakeFiles/PascalLexer.dir/src/main.cpp.o" \
"CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o" \
"CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o" \
"CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o"

# External object files for target PascalLexer
PascalLexer_EXTERNAL_OBJECTS =

PascalLexer: CMakeFiles/PascalLexer.dir/src/lexer.cpp.o
PascalLexer: CMakeFiles/PascalLexer.dir/src/main.cpp.o
PascalLexer: CMakeFiles/PascalLexer.dir/src/minimize_dfa.cpp.o
PascalLexer: CMakeFiles/PascalLexer.dir/src/nfa_to_dfa.cpp.o
PascalLexer: CMakeFiles/PascalLexer.dir/src/regex_to_nfa.cpp.o
PascalLexer: CMakeFiles/PascalLexer.dir/build.make
PascalLexer: CMakeFiles/PascalLexer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable PascalLexer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PascalLexer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PascalLexer.dir/build: PascalLexer

.PHONY : CMakeFiles/PascalLexer.dir/build

CMakeFiles/PascalLexer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PascalLexer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PascalLexer.dir/clean

CMakeFiles/PascalLexer.dir/depend:
	cd /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build /data15/DISCOVER_winter2024/xuaf2401/myProj/C-Compiler/cifa/build/CMakeFiles/PascalLexer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PascalLexer.dir/depend

