rd:: Integer -> [Integer]
rd a | a==1 = primeList
     | otherwise = filter (\x -> sum (dzielniki x ) == x + a ) [2..a*a]

dzielniki :: Integer -> [Integer]
dzielniki x = filter (\y ->  x `mod` y == 0 ) [1..x]


primeList :: [Integer]
primeList = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (p : xs) = 
    p : sieve (filter (\x -> x `mod` p /= 0) xs)