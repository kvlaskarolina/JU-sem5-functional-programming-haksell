h:: [a] -> [a]
h a = pom a 0

pom :: [a] -> Int -> [a]
pom [] _ = []
pom (x:xs) n | n `mod` 2 == 0 = x : pom xs 1
             | otherwise = pom xs 0