mapZipWith :: (a -> b) -> [a] -> [b]
mapZipWith f xs  = zipWith (\x y -> f x) xs [1..]

zipZipWith :: [a] -> [b] -> [(a, b)]
zipZipWith = zipWith (\x y -> (x, y))