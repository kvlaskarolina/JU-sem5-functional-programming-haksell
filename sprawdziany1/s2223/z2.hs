wyniki :: Double -> [(String,Double)] -> [(String,String)]
wyniki max scores = map (\(x, y) -> (ttrim x, score max y)) scores
 
ttrim :: String -> String
ttrim word | head word == ' ' = ttrim (tail word)
                | last word == ' ' = ttrim (init word)
                | otherwise = word
 
score :: Double -> Double -> String
score max s | s > max || s < 0 = "Nieprawidłowe dane"
            | s > 0.9 * max = "5.0"
            | s > 0.8 * max = "4.5"
            | s > 0.7 * max = "4.0"
            | s > 0.6 * max = "3.5"
            | s > 0.5 * max = "3.0"
            | otherwise = "2.0"