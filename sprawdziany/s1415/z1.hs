numocc :: (Eq a) => a -> [[a]] -> [Int]
numocc _ [] = []
numocc i (x:xs) = (policz i x ) : numocc i xs

policz :: (Eq a) => a -> [a] -> Int
policz _ [] = 0
policz n (x:xs) | (n == x) = 1 + (policz n xs)
                | otherwise = (policz n xs)