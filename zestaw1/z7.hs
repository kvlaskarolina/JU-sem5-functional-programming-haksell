czyDoskonala :: Int -> Bool
czyDoskonala n = (n == sum (dzielniki (n,[1..n])))

czyDzieli :: Int -> Int -> [Int]
czyDzieli  a b | a `mod` b == 0 = [b]
               | otherwise = []

dzielniki :: (Int, [Int]) -> [Int]
dzielniki x | (fst x) == (head (snd x)) = []
            | otherwise = (czyDzieli  (fst x) (head (snd x))) ++ dzielniki ((fst x), tail (snd x)) 
