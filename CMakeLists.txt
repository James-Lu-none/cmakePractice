cmake_minimum_required(VERSION 3.25.1)
project(test)
add_executable(${PROJECT_NAME} src/main.cpp)

# dir that lib executable stays in, and this command
# only works for cmake version greater than 3.13.
# target_link_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/../lib/mylib/build/)
# just lib name not `lib`name nor name.a for linbraries
target_link_libraries(${PROJECT_NAME} 
    jamesMath
    glfw
)

#add submodule glfw
add_subdirectory(deps/glfw)

#add include directories
target_include_directories(${PROJECT_NAME} 
    PUBLIC deps/glfw/include
)

# target_link_directories: Add link directories to a target.
target_link_directories(${PROJECT_NAME}
    PUBLIC deps/glfw/src
)