f :: Double -> String
f x | ( x == 2.0 ) = "niezaliczone"
    | ( x == 5.0 ) = "brawo"
    | otherwise = "masz wpisane " ++ show x