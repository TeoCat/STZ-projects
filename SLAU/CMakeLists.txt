cmake_minimum_required(VERSION 3.16)
project(SLAU)

set(CMAKE_CXX_STANDARD 14)

add_subdirectory(googletest)

add_subdirectory(Test)
add_subdirectory(Lib)