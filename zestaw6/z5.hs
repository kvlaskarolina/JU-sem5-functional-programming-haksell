czy1 :: (Int,Int) -> Bool
czy1 p
    | (fst p >= 0 && snd p >= 0) = true
    | otherwise = false  
czy2 :: (Int,Int) -> Bool
czy2 p
    | (fst p <= 0 && snd p >= 0) = true
    | otherwise = false  
czy3 :: (Int,Int) -> Bool
czy3 p
    | (fst p <= 0 && snd p <= 0) = true
    | otherwise = false  
czy4 :: (Int,Int) -> Bool
czy4 p
    | (fst p >= 0 && snd p <= 0) = true
    | otherwise = false  


ktoraCwiartka :: [(Int,Int)] -> Int
ktoraCwiartka x:xs = 