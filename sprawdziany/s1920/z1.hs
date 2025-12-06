sevens:: Int -> [Int]
sevens n = take n (filter (\x -> suma x == 7)[1..])

suma:: Int -> Int
suma n | n `div` 10 == 0 = n
       | otherwise = suma (suma1 n)

suma1:: Int -> Int
suma1 n | n `div` 10 == 0 = n
        | otherwise = suma1 (n `div` 10) + (n `mod` 10 )