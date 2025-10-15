merge :: [Int] -> [Int] -> [Int]
merge [] xt = xt
merge xs [] = xs
merge (x:xs) (y:yt)
    | x > y     = y : merge (x:xs) yt
    | otherwise = x : merge xs (y:yt) 

mergeSort :: [Int] -> [Int]
mergeSort []  = []
mergeSort [x] = [x]
mergeSort xs =
    let 
        n = length xs `div` 2 
    in
        merge (mergeSort (take n xs)) (mergeSort (drop n xs))