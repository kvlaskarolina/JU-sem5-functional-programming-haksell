perm :: (Ord a) => [a] -> [[a]]
perm [] = [[]]
perm xs = [y : ps | y <- unique (msort xs), ps <- perm (removeFirst y (msort xs))]

-- 1. Własna implementacja Merge Sort, aby zapewnić porządek wejściowy
msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
  where
    (left, right) = splitAt (length xs `div` 2) xs
    merge [] ys = ys
    merge xs [] = xs
    merge (x : xs) (y : ys)
      | x <= y = x : merge xs (y : ys)
      | otherwise = y : merge (x : xs) ys

-- 2. Funkcja usuwająca tylko pierwsze wystąpienie danego elementu
-- (Ważne przy listach z duplikatami, np. [1, 1, 2])
removeFirst :: (Eq a) => a -> [a] -> [a]
removeFirst _ [] = []
removeFirst n (x : xs)
  | n == x = xs
  | otherwise = x : removeFirst n xs

-- 3. Funkcja wyciągająca unikalne elementy z posortowanej listy
unique :: (Eq a) => [a] -> [a]
unique [] = []
unique [x] = [x]
unique (x : y : xs)
  | x == y = unique (y : xs)
  | otherwise = x : unique (y : xs)

-- msort: Permutacje leksykograficzne muszą zaczynać się od najmniejszych elementów. Sortowanie na początku każdego kroku gwarantuje, że y (pierwszy element permutacji) będzie wybierany w kolejności rosnącej.

-- unique: Jeśli lista wejściowa to [1, 1, 2], nie chcemy generować permutacji zaczynających się od pierwszej "jedynki", a potem osobno od drugiej "jedynki", bo wyniki by się powtarzały. unique sprawia, że każda wartość na danej pozycji jest rozważana tylko raz.

-- removeFirst: Musimy usunąć dokładnie ten element, który "zużyliśmy" na początku permutacji, ale zachować pozostałe (nawet jeśli mają tę samą wartość).