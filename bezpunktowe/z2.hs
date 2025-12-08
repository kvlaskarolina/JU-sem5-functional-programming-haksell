nonZero :: [Int] -> Int
nonZero list = length (filter (\x -> x /= 0) list)

nonZero' list = length (filter (/= 0) list)

nonZero'' list = (length . filter (/= 0)) list

nonZero''' = (length . filter (/= 0))

nonZero'''' = length . filter (/= 0)
