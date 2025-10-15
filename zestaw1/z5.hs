f :: [Integer] -> Integer
f [] = 1
f l = head l * f (tail l)