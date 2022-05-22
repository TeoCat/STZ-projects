cmake_minimum_required(VERSION 3.16)
project(ODU)

set(CMAKE_CXX_STANDARD 14)

find_package(Eigen3 REQUIRED)

include_directories(include)

add_executable( ${PROJECT_NAME} main.cpp Solver.cpp Solver.h )

target_link_libraries(
        ${PROJECT_NAME}
        PRIVATE
        Eigen3::Eigen
)