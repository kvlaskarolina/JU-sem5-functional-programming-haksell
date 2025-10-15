czyDoskonala :: Int -> Bool
czyDoskonala n = n == sum (dzielniki n)

dzielniki :: (Int, [Int]) -> [Int]
dzielniki p = 
