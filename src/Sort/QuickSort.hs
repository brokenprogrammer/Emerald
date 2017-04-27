-- MIT License

-- Copyright (c) 2017 Oskar Mendel

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.


-- Quicksort is a divide and conquer algorithm. Quicksort first divides a
-- large array into two smaller sub-arrays: the low elements and the high elements.
-- Quicksort can then recursively sort the sub-arrays.
-- The steps are:
--    1. Pick an element, called a pivot, from the array.
--    2. Partitioning: reorder the array so that all elements with values less than
--       the pivot come before the pivot, while all elements with values greater than
--       the pivot come after it (equal values can go either way). After this
--       partitioning, the pivot is in its final position.
--       This is called the partition operation.
--    3. Recursively apply the above steps to the sub-array of elements with smaller values
--       and separately to the sub-array of elements with greater values.
-- The base case of the recursion is arrays of size zero or one, which never need to be sorted.
-- The pivot selection and partitioning steps can be done in several different ways;
-- the choice of specific implementation schemes greatly affects the algorithm's performance.
--
-- Worst-case - O(n^2)
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let lowerSort  = quickSort [a | a <- xs, a <= x]
      biggerSort = quickSort [a | a <- xs, a > x]
  in lowerSort ++ [x] ++ biggerSort
