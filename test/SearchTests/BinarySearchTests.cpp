//
// Created by Oskar Mendel on 4/23/17.
//

#include "gtest/gtest.h"
#include "Search/BinarySearch.h"

TEST(BinarySearchTests, Found) {
    int v1[] = {1,2,3,4,6,7,8};
    int v1Size = 8;

    int found1 = BinarySearch(1, v1, v1Size);
    int found2 = BinarySearch(4, v1, v1Size);
    int found3 = BinarySearch(8, v1, v1Size);


    EXPECT_EQ(found1, 0);
    EXPECT_EQ(found2, 3);
    EXPECT_EQ(found3, 6);
}

TEST(BinarySearchTests, NotFound) {
    int v1[] = {1,2,3,4,6,7,8};
    int v1Size = 8;

    int notFound1 = BinarySearch(11, v1, v1Size);
    int notFound2 = BinarySearch(-20, v1, v1Size);


    EXPECT_EQ(notFound1, -1);
    EXPECT_EQ(notFound2, -1);
}