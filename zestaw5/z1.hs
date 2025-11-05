czyWielkaLitera :: Char -> Bool
czyWielkaLitera c = c >= 'A' && c <= 'Z'

wielkieLitery :: [String] -> [String]
wielkieLitery = map (filter czyWielkaLitera) 