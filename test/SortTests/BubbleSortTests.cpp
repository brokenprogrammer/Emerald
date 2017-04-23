//
// Created by Oskar Mendel on 4/23/17.
//

#include "gtest/gtest.h"
#include "Sort/BubbleSort.h"

TEST(BubbleSortTests, Sorted) {
    int v1[] = {6, 4, 1, 5, 7, 10, 99, 64, 32, 22, 103, 74, 8, 9};
    int v1Size = 14;

    BubbleSort(v1, v1Size);

    for (int i = 1; i < v1Size; ++i) {
        EXPECT_GE(v1[i], v1[i-1]);
    }

    int v2[] = {3, 2, 1};
    int v2Size = 3;

    BubbleSort(v2, v2Size);

    EXPECT_EQ(v2[0], 1);
    EXPECT_EQ(v2[1], 2);
    EXPECT_EQ(v2[2], 3);
}