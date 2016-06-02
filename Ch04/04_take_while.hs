myTakeWhile :: (a -> Bool) -> [a] -> [a]

myTakeWhile predicat xs = foldr step [] xs
    where step x  res | (predicat x) =  x : res
                      | otherwise = []
