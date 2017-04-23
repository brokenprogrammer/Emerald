//
// Created by Oskar Mendel on 4/23/17.
//

#include "BubbleSort.h"

/**
 * Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm
 * that repeatedly steps through the list to be sorted, compares each pair of adjacent
 * items and swaps them if they are in the wrong order. The pass through the list is
 * repeated until no swaps are needed, which indicates that the list is sorted.
 * The algorithm, which is a comparison sort, is named for the way smaller or
 * larger elements "bubble" to the top of the list
 *
 * Worst-case - O(n^2)
 *
 * @param values - Array with values to be sorted.
 * @param size - Size of array with values.
 */
void BubbleSort(int values[], int size) {
    bool swapped = true;
    int sorted = 0;
    int temp;

    while (swapped) {
        swapped = false;
        sorted++;
        for (int i = 0; i < size - sorted; ++i) {
            if (values[i + 1] < values[i]) {
                temp = values[i];
                values[i] = values[i + 1];
                values[i + 1] = temp;
                swapped = true;
            }
        }
    }
}