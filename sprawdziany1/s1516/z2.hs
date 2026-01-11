val :: Integer -> Integer -> Integer
val a b | a `mod` b == 0 = 1 + val (a `div` b) b
        | otherwise = 0


g :: Integer -> Integer -> [Integer]
g k v = [n | n <- [2..], val n k == v]

-- take 10 ( g 2 0 )
-- take 10 ( g 3 1 )