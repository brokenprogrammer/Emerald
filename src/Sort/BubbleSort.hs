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

-- Recursively iterate over the list while switching positions on x & y depending on size.
bubbleSortiter :: (Ord a) => [a] -> [a]
bubbleSortiter (x:y:xs) = if x > y then y : bubbleSortiter (x:xs) else x : bubbleSortiter (y:xs)
bubbleSortiter (x) = (x)

-- Repeat the iteration process n times.
bubbleSort' :: (Ord a) => [a] -> Int -> [a]
bubbleSort' xs i = if i == (length xs) then xs else bubbleSort' (bubbleSortiter xs) (i + 1)

-- Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm
-- that repeatedly steps through the list to be sorted, compares each pair of adjacent
-- items and swaps them if they are in the wrong order. The pass through the list is
-- repeated until no swaps are needed, which indicates that the list is sorted.
-- The algorithm, which is a comparison sort, is named for the way smaller or
-- larger elements "bubble" to the top of the list
--
-- Worst-case - O(n^2)
bubbleSort :: (Ord a) => [a] -> [a]
bubbleSort xs = bubbleSort' xs 0
