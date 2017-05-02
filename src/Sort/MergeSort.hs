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

-- Takes the first half of a list. Note that length & take is O(n) operations
-- so this could be performed in a better way.
firstHalf :: [a] -> [a]
firstHalf xs = take (length xs `div` 2) xs

-- Takes the second half of a list. Note that length & drop is O(n) operations
-- so this could be performed in a better way.
secondHalf :: [a] -> [a]
secondHalf xs = drop (length xs `div` 2) xs

-- The merge of two lists helper function.
merge :: (Ord a) => [a] -> [a] -> [a]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys)
    | (x <= y)  = x:(merge xs (y:ys))
    | otherwise = y:(merge (x:xs) ys)

-- Conceptually, a merge sort works as follows:
--     1. Divide the unsorted list into n sublists, each containing 1 element
--         (a list of 1 element is considered sorted).
--     2. Repeatedly merge sublists to produce new sorted sublists until there
--         is only 1 sublist remaining. This will be the sorted list.
--
-- Worst-case - O(n log n)
mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort (firstHalf xs)) (mergeSort (secondHalf xs))
