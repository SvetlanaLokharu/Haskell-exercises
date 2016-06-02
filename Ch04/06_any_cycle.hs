-- RWH, Ch04, exercises

-- any
myAny :: (a->Bool) -> [a] -> Bool

myAny p xs = foldr step False xs
    where step x res = (p x) || res
    
-- cycle
myCycle :: [a] -> [a]

-- works but very slowly
myCycle xs = foldr step xs xs
    where step x res = x : myCycle res
    
    -- works but very slowly
myCycle1 :: [a] -> [a]
myCycle1 xs = foldr step (myCycle1 xs) xs
    where step x res = x : res

-- cycle with left fold. Works OK    
reverseList xs = reverseHelper xs [] 
    where reverseHelper [] acc = acc
          reverseHelper (x:xs) acc = reverseHelper xs (x : acc)
    
myCycle2 :: [a] -> [a]
myCycle2 xs = foldl step (myCycle2 xs) (reverseList xs)
    where step acc x = x : acc
    
    
    
