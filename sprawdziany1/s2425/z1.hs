moznaWyplacic :: Integer -> Integer -> Integer -> Bool
moznaWyplacic a b n | n < 0 = False
                    | n == 0 = True
                    | otherwise = moznaWyplacic a b (n - a) || moznaWyplacic a b (n - b)

wyplata :: Integer -> Integer -> Integer -> [Integer]
wyplata a b n = [x | x <- [1..n], moznaWyplacic a b x]