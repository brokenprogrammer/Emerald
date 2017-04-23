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

-- Recursively iterate over the list while checking if the current x is the element
-- that is being searched for while keeping track of position with the i variable.
linearSearch' :: (Eq a) => [a] -> a -> Int -> Int
linearSearch' [] s i = -1;
linearSearch' (x:xs) s i = if x == s then i else linearSearch' xs s (i + 1)

-- Linear search sequentially checks each element of the list until it finds
-- an element that matches the target value. If the algorithm reaches the end
-- of the list, the search terminates unsuccessfully. (In this case returns -1)
--
-- Worst-case - O(n)
linearSearch :: (Eq a) => [a] -> a -> Int
linearSearch xs s = linearSearch' xs s 0
