diffsums :: [[Int]] -> [[Int]]
diffsums = foldr (\x y->if any (\z -> sum x == sum z) y then y else x:y ) []

-- funkcja składająca przyjmuje dwa argumenty w kontekście foldr:
-- x: Aktualny element z listy wejściowej (jest to pojedyncza lista, np. [1, 2]).
-- y: Akumulator, czyli rezultat dotychczasowego składania (jest to lista list, które zostały już przetworzone i zachowane, np. [[3, 4], [1, 5]]).
-- Wewnątrz funkcji składającej wykonuje się następującą logikę:
-- Obliczenie sumy: Oblicza się sumę elementów aktualnej listy x 
-- Sprawdzenie unikalności: Używa się funkcji any, aby sprawdzić, 
-- czy którakolwiek lista z z dotychczasowego rezultatu y (akumulatora) 
-- ma sumę równą sumie x.