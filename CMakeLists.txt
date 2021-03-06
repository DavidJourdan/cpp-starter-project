cmake_minimum_required(VERSION 3.9)
project(starter)

# Detects whether this is a top-level project
get_directory_property(PARENT_DIR PARENT_DIRECTORY)
if(NOT PARENT_DIR)
    set(TOPLEVEL_PROJECT ON)
else()
    set(TOPLEVEL_PROJECT OFF)
endif()

# Build tests
option(BUILD_TESTS    "Build unit test"  OFF)

# Build example project
if(${TOPLEVEL_PROJECT} AND NOT ${BUILD_TESTS})
    option(BUILD_EXAMPLE  "Build example project"  ON)
endif()

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

include(starter)

if(BUILD_TESTS)
    include(CTest)
    enable_testing()
    add_subdirectory(tests)
endif()

if(BUILD_EXAMPLE)
    add_subdirectory(example)
endif()