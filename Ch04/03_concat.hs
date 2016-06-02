concatList :: [[a]] -> [a]
concatList xs = foldr step [] xs
    where step acc x = acc ++ x