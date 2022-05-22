cmake_minimum_required(VERSION 3.16)
project(Resistor)

set(CMAKE_CXX_STANDARD 14)

find_package(Eigen3 REQUIRED)

add_executable(Resistor main.cpp)

target_link_libraries(
        ${PROJECT_NAME}
        PRIVATE
        Eigen3::Eigen
)