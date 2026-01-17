f :: [Int] -> [[Int]]
f (x : xs) = foldl g [[x]] xs
  where
    g acc y =
      if y == last (last acc) + 1
        then init acc ++ [last acc ++ [y]]
        else acc ++ [[y]]