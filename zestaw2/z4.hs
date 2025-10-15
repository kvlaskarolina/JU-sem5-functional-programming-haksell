dzielniki :: Int -> [Int]
dzielniki x = filter (\y ->  x `mod` y == 0 ) [1..x-1]