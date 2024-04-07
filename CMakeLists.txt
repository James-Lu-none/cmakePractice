# cmake --version -> 3.25.1
cmake_minimum_required(VERSION 3.25.1)

# project name here
project(cmakePractice)

# start to build something
# and specifically, it builds in debug (by default)
add_executable(${PROJECT_NAME} main.c)

# if we do `make install` with this line, we can have
# the output executable install directly to the 
# `/usr/local/bin` (depends on the user config)
install(TARGETS ${PROJECT_NAME} DESTINATION bin)