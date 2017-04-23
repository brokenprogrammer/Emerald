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

binarySearch' :: (Ord a) => [a] -> a -> Int -> Int -> Int
binarySearch' xs value lo hi
  | lo > hi = -1
  | xs !! mid > value = binarySearch' xs value lo (mid-1)
  | xs !! mid < value = binarySearch' xs value (mid+1) hi
  | otherwise = mid
  where
    mid = ((lo + hi) `div` 2)

-- Binary search works on sorted arrays. Binary search begins by comparing
-- the middle element of the array with the target value. If the target value
-- matches the middle element, its position in the array is returned.
-- If the target value is less than or greater than the middle element,
-- the search continues in the lower or upper half of the array, respectively,
-- eliminating the other half from consideration.
--
-- Worst-case - O(log n)
binarySearch :: (Ord a) => [a] -> a -> Int
binarySearch xs value = binarySearch' xs value 0 ((length xs)-1)
