//
// Created by Oskar Mendel on 4/23/17.
//

#include "LinearSearch.h"

/**
 * Linear search sequentially checks each element of the list until it finds
 * an element that matches the target value. If the algorithm reaches the end
 * of the list, the search terminates unsuccessfully. (In this case returns -1)
 *
 * Worst-case - O(n)
 *
 * @param key - Key value to search for.
 * @param values - Array with values to be searched.
 * @param size - Size of array with values.
 * @return Location of the key element within the array, -1 if not found.
 */
int LinearSearch(int key, int values[], int size) {
    for (int x = 0; x < size; ++x) {
        if (values[x] == key) {
            return x;
        }
    }

    return -1;
}