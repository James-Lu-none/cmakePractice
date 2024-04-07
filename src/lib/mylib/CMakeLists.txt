# cmake --version -> 3.25.1
cmake_minimum_required(VERSION 3.25.1)

# project name here
project(cmakePractice)

# start to build something
# and specifically, it builds in debug (by default)
# you can see that only adder.cpp is needed,
# since adder.cpp includes it adder.h.
add_library(${PROJECT_NAME} adder.cpp)