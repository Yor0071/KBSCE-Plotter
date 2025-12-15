cmake_minimum_required(VERSION 3.20)
project(KBSCE-Plotter)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_FLAGS "-g -fstack-usage")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include_directories(include)

file(GLOB SRC src/*.cpp)
add_executable(app ${SRC})
