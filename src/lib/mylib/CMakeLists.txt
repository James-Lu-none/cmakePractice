# cmake --version -> 3.25.1
cmake_minimum_required(VERSION 3.25.1)

# project name here
project(jamesMath)

# start to build something
# and specifically, it builds in debug (by default)
# you can see that only adder.cpp is needed,
# since adder.cpp includes it adder.h.
add_library(${PROJECT_NAME} adder.cpp)

set_target_properties(${PROJECT_NAME} PROPERTIES PUBLIC_HEADER adder.h)
install(TARGETS ${PROJECT_NAME} LIBRARY DESTINATION lib
        PUBLIC_HEADER DESTINATION include)
