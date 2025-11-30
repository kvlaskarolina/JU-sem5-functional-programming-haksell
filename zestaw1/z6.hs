merge :: [Int] -> [Int] -> [Int]
merge [] [] = []
merge [] x = x
merge x [] = x
merge (x:xs) (y:ys) | x < y = x : merge xs (y : ys)
                    | otherwise = y : merge (x:xs)  ys



mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort x | length x >= 2 = merge (mergeSort (take ((length x )`div` 2) x ) ) (mergeSort( drop ((length x) `div` 2) x))
            | otherwise = x