cmake_minimum_required(VERSION 3.7)
project(Emerald)

set(CMAKE_CXX_STANDARD 14)

set(EMELARD_SOURCE_DIR
        src)
set(EMERALD_TEST_DIR
        test)

include_directories(${EMELARD_SOURCE_DIR})

add_subdirectory(${EMELARD_SOURCE_DIR})
add_subdirectory(${EMERALD_TEST_DIR})