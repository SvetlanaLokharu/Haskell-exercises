-- RWH, Ch03

-- Ex01, Ex02
myLength::[a]->Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

-- Ex03
myMean [] = 0
myMean xs = fromIntegral (mySum xs) / fromIntegral (myLength xs)
    where mySum [] = 0
          mySum (y:ys) = y + mySum ys
		  
-- Ex04
reverseList xs = reverseHelper xs [] 
    where reverseHelper [] acc = acc
          reverseHelper (x:xs) acc = reverseHelper xs (x : acc)
	
makePalindrome xs = xs ++ reverseList xs