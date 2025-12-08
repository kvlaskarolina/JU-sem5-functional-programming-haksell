ps :: [a] -> [[a]]
ps xs = foldl (\acc _ -> [init (head acc)] ++ acc ++ [tail (last acc)]) [xs] [1..length xs - 1]