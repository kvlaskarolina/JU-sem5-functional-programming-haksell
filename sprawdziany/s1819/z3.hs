cykl :: [a] -> [[a]]
cykl [] = []
cykl xs = foldl (\acc _ -> acc ++ [rotateLeft (last acc)]) [xs] [1..length xs - 1]
  where
    rotateLeft [] = []
    rotateLeft (y:ys) = ys ++ [y]