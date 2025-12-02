slowaDlugosci :: Char -> Char -> Integer -> [String]
slowaDlugosci a b i
    | i <= 0    = [""]
    | otherwise =
        let
            krotszeSlowa = slowaDlugosci a b (i - 1)
        in
            map (\s -> a : s) krotszeSlowa
            ++
            map (\s -> b : s) krotszeSlowa

-- slowaDlugosci 't' 'k' 3