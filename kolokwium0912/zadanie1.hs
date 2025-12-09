roznica :: String -> Integer
roznica list = summ (f list)

f :: String -> [Integer]
f [] = []
f a
  | head a == '0' = 0 : f (tail a)
  | head a == '1' = 1 : f (tail a)
  | head a == '2' = 2 : f (tail a)
  | head a == '3' = 3 : f (tail a)
  | head a == '4' = 4 : f (tail a)
  | head a == '5' = 5 : f (tail a)
  | head a == '6' = 6 : f (tail a)
  | head a == '7' = 7 : f (tail a)
  | head a == '8' = 8 : f (tail a)
  | otherwise = 9 : f (tail a)

summ :: [Integer] -> Integer
summ [] = 0
summ a = head a - summ (tail a)

sprawdz :: [Integer] -> [String]
sprawdz [] = []
sprawdz a = czyZero (head a) : sprawdz (tail a)

czyZero :: Integer -> String
czyZero i
  | summ (reverse (integerToList i)) == 0 = "zero"
  | otherwise = "nz"

integerToList :: Integer -> [Integer]
integerToList 0 = []
integerToList i = (i `mod` 10) : integerToList (i `div` 10)