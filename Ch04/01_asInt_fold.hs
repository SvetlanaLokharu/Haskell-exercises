-- file: ch04/ch04.exercises.hs
import Data.Char(digitToInt)

asInt_fold :: [Char] -> Int

asInt_fold str@(x:xs) | (x == '-') = (-1) * foldl step 0 xs
                      | otherwise = foldl step 0 str  
    where step acc x = (acc * 10) + (digitToInt x)             