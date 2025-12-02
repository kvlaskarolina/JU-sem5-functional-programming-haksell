reverseL :: [a] -> [a]
reverseL = foldl (\acc x -> x : acc) [] -- podisuje na poczatku aktualnego frag,mentu
 
reverseR :: [a] -> [a]
reverseR = foldr (\x acc -> acc ++ [x]) [] -- dopisuje na koncu