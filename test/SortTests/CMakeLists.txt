include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_executable(runSortTests
        BubbleSortTests.cpp
        InsertionSortTests.cpp)

target_link_libraries(runSortTests gtest gtest_main)
target_link_libraries(runSortTests emerald)