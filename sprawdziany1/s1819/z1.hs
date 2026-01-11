-- Funkcja generująca ciągi a_n i b_n
ciagi :: [(Int, Int)]
ciagi = (1, 1) : zipWith nastepny [1..] ciagi
  where
    nastepny n (a_prev, b_prev) = (a_n, b_n)
      where
        a_n = (n - 1) * b_prev - 3 * a_prev
        b_n = 3 * b_prev + (n - 1)^2 * a_prev - (n - 1)^2

-- Funkcja zwracająca najmniejsze k takie, że a_0 + a_1 + ... + a_k >= m
seqIndex :: Int -> Int
seqIndex m = length (takeWhile (< m) sumyA) - 1
  where
    wartosciA = map fst ciagi
    sumyA = scanl1 (+) wartosciA

-- Przykłady użycia:
-- seqIndex 100 = 4
-- seqIndex 1000000 = 8

-- Pomocnicze funkcje do sprawdzenia:
-- Pierwsze n wartości ciągu a_n
pierwszeA :: Int -> [Int]
pierwszeA n = take n (map fst ciagi)

-- Pierwsze n wartości ciągu b_n
pierwszeB :: Int -> [Int]
pierwszeB n = take n (map snd ciagi)

-- Sumy częściowe a_0 + a_1 + ... + a_k
sumyCzesciowe :: Int -> [Int]
sumyCzesciowe n = take n (scanl1 (+) (map fst ciagi))