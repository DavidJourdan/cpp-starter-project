cmake_minimum_required(VERSION 3.9)
project(example)

file(GLOB SRC ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

# c++ flags
set(CMAKE_CXX_STANDARD 17)

# Add an executable based on the source
add_executable(example ${SRC})

# Configure (include headers and link libraries) the test
target_link_libraries(example PRIVATE starter)