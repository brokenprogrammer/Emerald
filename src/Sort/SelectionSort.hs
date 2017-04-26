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

import Data.List

selectionSort' :: (Ord a) => [a] -> [a]
selectionSort' [] = []
selectionSort' xs = x : selectionSort' (delete x xs)
    where x = minimum xs

-- The algorithm divides the input list into two parts: the sublist of
-- items already sorted, which is built up from left to right at the front (left)
-- of the list, and the sublist of items remaining to be sorted that occupy the
-- rest of the list. Initially, the sorted sublist is empty and the unsorted sublist
-- is the entire input list. The algorithm proceeds by finding the
-- smallest (or largest, depending on sorting order) element in the unsorted sublist,
-- exchanging (swapping) it with the leftmost unsorted element
-- (putting it in sorted order), and moving the sublist boundaries one element to the right.
--
-- Worst-case - O(n^2)
selectionSort :: (Ord a) => [a] -> [a]
selectionSort xs = selectionSort' xs
