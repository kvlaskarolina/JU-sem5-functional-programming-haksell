reverseL :: [a] -> [a]
reverseL = foldl (\acc x -> x : acc) []
 
reverseR :: [a] -> [a]
reverseR = foldr (\x acc -> acc ++ [x]) []