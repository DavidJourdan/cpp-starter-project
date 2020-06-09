cmake_minimum_required(VERSION 3.9)
################################################################################

### Configuration
set(STARTER_ROOT "${CMAKE_CURRENT_LIST_DIR}/..")
set(STARTER_SOURCE_DIR "${STARTER_ROOT}/include")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

################################################################################

### Uncomment if you're using Eigen
# find_package (Eigen3 3.3 REQUIRED NO_MODULE)
# set (EXTRA_LIBS ${EXTRA_LIBS} Eigen3::Eigen)

### starter
file(GLOB SRC ${STARTER_SOURCE_DIR}/starter/start.cpp)
add_library(starter ${SRC})

# c++ flags
set_target_properties(starter PROPERTIES
        CXX_STANDARD 17
        CXX_STANDARD_REQUIRED OFF
        CXX_EXTENSIONS ON
        )

target_link_libraries(starter ${EXTRA_LIBS})
include_directories(${STARTER_SOURCE_DIR})
