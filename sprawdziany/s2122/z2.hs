wIluListach :: Int -> [[Int]] -> [Int]
wIluListach n list = map (\x -> length (filter (elem x )list)) [1..n] 