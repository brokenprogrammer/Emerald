//
// Created by Oskar Mendel on 4/23/17.
//

#include "BinarySearch.h"

/**
 * Binary search works on sorted arrays. Binary search begins by comparing
 * the middle element of the array with the target value. If the target value
 * matches the middle element, its position in the array is returned.
 * If the target value is less than or greater than the middle element,
 * the search continues in the lower or upper half of the array, respectively,
 * eliminating the other half from consideration.
 *
 * Worst-case - O(log n)
 *
 * @param key - Key value to search for.
 * @param values - Array with values to be searched.
 * @param size - Size of array with values.
 * @return Location of the key element within the array, -1 if not found.
 */
int BinarySearch(int key, int values[], int size) {
    int hi = size;
    int lo = 0;
    int mid = -1;

    while (hi >= lo) {
        mid = lo + (hi - lo) / 2;

        if (key < values[mid]) {
            hi = mid - 1;
        } else if (key > values[mid]) {
            lo = mid + 1;
        } else {
            return mid;
        }
    }

    return -1;
}