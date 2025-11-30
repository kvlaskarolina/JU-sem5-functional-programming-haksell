f :: Double -> String
f x | ( x == 2.0 ) = "niezaliczone"
    | ( x == 5.0 ) = "brawo"
    | otherwise = "masz wpisane " ++ show x

ocena :: Double -> String
ocena 2.0 = "niezaliczone"
ocena 5.0 = "brawo!"
ocena x = "wpisane masz " ++ show x