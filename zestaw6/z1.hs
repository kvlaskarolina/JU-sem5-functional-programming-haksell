f :: [Integer] -> Integer
f a =  foldl (-) 0 a

g :: [Integer] -> Integer
g a =  foldr (-) 0 a
