# Install script for directory: C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Resistor")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/AdolcForward"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/AlignedVector3"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/ArpackSupport"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/AutoDiff"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/BVH"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/EulerAngles"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/FFT"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/IterativeSolvers"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/KroneckerProduct"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/LevenbergMarquardt"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/MatrixFunctions"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/MoreVectorization"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/MPRealSupport"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/NonLinearOptimization"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/NumericalDiff"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/OpenGLSupport"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/Polynomials"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/Skyline"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/SparseExtra"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/SpecialFunctions"
    "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "C:/Users/isaev/CLionProjects/Resistor/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/isaev/CLionProjects/Resistor/cmake-build-debug/eigen/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

