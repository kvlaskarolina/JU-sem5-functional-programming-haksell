compref :: [Int] -> [Int] -> Int
compref a b = pom (zip a b )

pom:: [(Int,Int)] -> Int
pom [] = 0
pom (x:xs )  | fst x == snd x = pom xs + 1
             | otherwise = 0
