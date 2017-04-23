//
// Created by Oskar Mendel on 4/23/17.
//

#include "InsertionSort.h"

/**
 * Insertion sort iterates, consuming one input element each repetition,
 * and growing a sorted output list. Each iteration, insertion sort
 * removes one element from the input data, finds the location it belongs
 * within the sorted list, and inserts it there. It repeats until no input
 * elements remain.
 *
 * Worst-case - O(n^2)
 *
 * @param values - Array with values to be sorted.
 * @param size - Size of array with values.
 */
void InsertionSort(int values[], int size) {
    for (int i = 1; i < size; i++) {
        int key = values[i];
        int j = i-1;

        /* Move elements of arr[0..i-1], that are
         greater than key, to one position ahead
         of their current position */
        while (j >= 0 && values[j] > key)
        {
            values[j+1] = values[j];
            j = j-1;
        }
        values[j+1] = key;
    }
}