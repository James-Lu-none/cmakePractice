#! /bin/sh

cmake -S ./src -B build

# if we want to modify the options for modules in configure time, we can use -D in cmake
# for example:
# `cmake -DGLFW_BUILD_DOCS=OFF -S . -B build`
# in this case we make GLFW_BUILD_DOCS off to not build the glfw documentation.