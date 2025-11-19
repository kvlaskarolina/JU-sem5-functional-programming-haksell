
dlaKazdego :: (a -> Bool) -> [a] -> Bool
dlaKazdego f xs = foldl (\x y  -> x && f y ) True xs

istnieje :: (a -> Bool) -> [a] -> Bool
istnieje f xs = foldl (\x y  -> x || f y ) False xs