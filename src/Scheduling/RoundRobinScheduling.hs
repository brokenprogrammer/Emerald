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

module RoundRobinScheduling where

import Data.Function (on)
import Data.List (sortBy)

data Process = Process {
    processId :: Integer,
    arrivalTime :: Integer,
    burstTime :: Integer,
    remainingBurstTime :: Integer,
    completedTime :: Integer,
    turnaroundTime :: Integer,
    waitingTime :: Integer,
    isScheduled :: Bool
} deriving (Show)

data Worker = Worker {
    processQueue :: [Process],
    currentTime :: Integer
} deriving (Show)

p1 = Process 1 0 4 4 0 0 0 False
p2 = Process 2 1 5 5 0 0 0 False
p3 = Process 3 2 2 2 0 0 0 False
p4 = Process 4 3 1 1 0 0 0 False
p5 = Process 5 4 6 6 0 0 0 False
p6 = Process 6 6 3 3 0 0 0 False

updateProcess :: Process -> Integer -> Process
updateProcess x y = x {burstTime = y}

performRoundRobinScheduling :: [Process] -> [Process]
performRoundRobinScheduling list = 
    do
        sortProcess list
        if (null list || null processQueue)
            then sortProcess list
            else list
        where processQueue = []

sortProcess :: [Process] -> [Process]
sortProcess list = sortBy (compare `on` arrivalTime) list

queueProcess :: [Process] -> Integer -> [Process]
queueProcess processes currentTime = [x | x <- processes, (arrivalTime x) <= currentTime]

workProcess :: Worker -> Worker --  Worker (processQueue worker) ((currentTime worker) + 1)
workProcess worker =
    do
        let queue = (processQueue worker);
        let ct = (currentTime worker);
        let currentProcess = queue !! 0;
        Worker (drop 1 queue ++ [updateProcess currentProcess tq]) (ct + 5)
        where tq = 2
        -- getNext process from queue
        --  if empty, then quit function and increment currentTime
        -- else decrement burstTime 

-- TODO: function that does work on processes, function to manipulate the queue properly..
-- 1. Add processes with the right arival time to the queue
-- 2. then do work on each process in the queue..
