dlugosc:: String -> Int
dlugosc a | length a < 2 = 0
          | not (elem 'b' a) = 0
          | otherwise = dlugosc( fixed a ) + 1 

fixed:: String -> String
fixed [] = []
fixed (a:[]) = [a]
fixed (x:y:xs)  | x=='a' && y=='a' = ['a','a','a'] ++ fixed xs
                | x=='a' && y=='b' = ['a'] ++ fixed xs
                | x=='b' && y=='a' = ['b'] ++ fixed xs
                | otherwise = ['a'] ++ fixed xs

