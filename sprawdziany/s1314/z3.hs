compref :: [Int] -> [Int] -> Int
compref a b = pom (zip a b )

pom:: [(Int,Int)] -> Int
pom [] = 0
pom xs   | fst (head xs) == snd (head xs )= pom (tail xs) + 1
         | otherwise = 0
