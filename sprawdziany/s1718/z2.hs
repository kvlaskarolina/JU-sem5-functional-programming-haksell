repl :: Eq a => [a] -> [(a,a)] -> [a]
repl list keys = foldl replace list keys

replace :: Eq a => [a] -> (a,a) -> [a]
replace [] _ = []
replace (x:xs) key | (x == fst key) = (snd key) : replace xs key
                   | otherwise = x : replace xs key