cmake_minimum_required(VERSION 3.25.1)
project(test)
add_executable(${PROJECT_NAME} src/main.cpp)

# Download all the submodules
find_package(Git)
if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
    option(GIT_SUBMODULE "Check submodules during build" ON)
    if(GIT_SUBMODULE)
        message(STATUS "Submodule update")
        execute_process(
            COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
            WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
            RESULT_VARIABLE GIT_SUBMOD_RESULT
        )
        if(NOT GIT_SUBMOD_RESULT EQUAL "0")
            message(FATAL_ERROR "git submodule update --init failed with ${GIT_SUBMOD_RESULT}, please checkout submodules")
        endif()
    endif()
endif()
# Check all submodules
if(NOT EXISTS "${PROJECT_SOURCE_DIR}/glfw/CMakeLists.txt")
    message(FATAL_ERROR "The glfw submodules was not downloaded!")
endif()

# dir that lib executable stays in, and this command
# only works for cmake version greater than 3.13.
# target_link_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/../lib/mylib/build/)
# just lib name not `lib`name nor name.a for linbraries
target_link_libraries(${PROJECT_NAME} 
    jamesMath
    glfw
)

#add submodule glfw
add_subdirectory(glfw)

#add include directories
target_include_directories(${PROJECT_NAME} 
    PUBLIC glfw/include
)

# target_link_directories: Add link directories to a target.
target_link_directories(${PROJECT_NAME}
    PUBLIC glfw/src
)