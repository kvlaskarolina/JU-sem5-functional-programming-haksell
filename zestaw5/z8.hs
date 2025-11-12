eratosthenes :: Integer -> [Integer]
eratosthenes n = 
    takeWhile (<= n) primeList

primeList :: [Integer]
primeList = sieve [2..]

sieve :: [Integer] -> [Integer]
sieve (p : xs) = 
    p : sieve (filter (\x -> x `mod` p /= 0) xs)
sieve [] = []