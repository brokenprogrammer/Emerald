//
// Created by Oskar Mendel on 4/23/17.
//

#include "gtest/gtest.h"
#include "Search/LinearSearch.h"

TEST(LinearSearchTests, Found) {
    int v1[] = {6, 4, 1, 5, 7, 10, 99, 64, 32, 22, 103, 74, 8, 9};
    int v1Size = 14;

    int found1 = LinearSearch(5, v1, v1Size);
    int found2 = LinearSearch(99, v1, v1Size);
    int found3 = LinearSearch(103, v1, v1Size);


    EXPECT_EQ(found1, 3);
    EXPECT_EQ(found2, 6);
    EXPECT_EQ(found3, 10);
}

TEST(LinearSearchTests, NotFound) {
    int v1[] = {6, 4, 1, 5, 7, 10, 99, 64, 32, 22, 103, 74, 8, 9};
    int v1Size = 14;

    int notFound1 = LinearSearch(11, v1, v1Size);
    int notFound2 = LinearSearch(250, v1, v1Size);


    EXPECT_EQ(notFound1, -1);
    EXPECT_EQ(notFound2, -1);
}