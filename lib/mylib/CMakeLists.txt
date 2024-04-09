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
# after sudo make install, it should look like this:
# james@debian:~/projects/cProject/cmakePractice/src/lib/mylib/build$ sudo make install
# [sudo] password for james: 
# [100%] Built target jamesMath
# Install the project...
# -- Install configuration: ""
# -- Installing: /usr/local/lib/libjamesMath.a
# -- Installing: /usr/local/include/adder.h