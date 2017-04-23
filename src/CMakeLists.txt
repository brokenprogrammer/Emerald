project(emerald)

set(HEADER_FILES
        Sort/BubbleSort.h
        Sort/InsertionSort.h
        Search/LinearSearch.h
        Search/BinarySearch.h)

set(SOURCE_FILES
        Sort/BubbleSort.cpp
        Sort/InsertionSort.cpp
        Search/LinearSearch.cpp
        Search/BinarySearch.cpp)

add_library(emerald STATIC ${SOURCE_FILES} ${HEADER_FILES})