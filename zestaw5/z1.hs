czyWielkaLitera :: Char -> Bool
czyWielkaLitera c = c >= 'A' && c <= 'Z'

wielkieLitery :: [String] -> [String]
wielkieLitery l = map (filter czyWielkaLitera) l