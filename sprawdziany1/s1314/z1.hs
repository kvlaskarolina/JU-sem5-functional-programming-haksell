oddbins :: Int -> [[Int]]
oddbins n = p True n []

p :: Bool -> Int -> [Int] -> [[Int]]
p _ 0 _ = [[]]
p True 1 _ = [[1]]
p False 1 _ = [[0]]
p b n xs = [0:ys | ys <- p b (n-1) xs] ++ [1:ys | ys <- p (not b) (n-1) xs]