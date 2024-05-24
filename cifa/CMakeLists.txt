cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(PascalLexer)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 包含目录
include_directories(include)

# 源文件
file(GLOB SOURCES "src/*.cpp")

# 可执行文件
add_executable(PascalLexer ${SOURCES})