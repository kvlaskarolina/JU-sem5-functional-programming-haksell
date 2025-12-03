repl :: Eq a => [a] -> [(a,a)] -> [a]
repl _ [] = []
repl list (key:keys) = repl (replace list key) keys

replace :: Eq a => [a] -> (a,a) -> [a]
replace [] _ = []
replace (x:xs) key | (x == fst key) = (snd key) : replace xs key
                   | otherwise = x : replace xs key