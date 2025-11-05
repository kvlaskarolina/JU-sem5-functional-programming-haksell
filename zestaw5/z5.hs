slowaDlugosci :: Char -> Char -> Integer -> [String]
slowaDlugosci a b i 
            | i <= 0    = [""]
            | otherwise =
                map (a :) slowaDlugosci a b ( i - 1 )
                ++
                map (b :) slowaDlugosci a b ( i - 1 )

-- to fix