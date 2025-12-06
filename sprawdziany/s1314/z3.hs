compref :: (Eq a) => [a] -> [a] -> Int
compref   = (pom.). zip

pom :: Eq a => [(a, a)] -> Int
pom = length . takeWhile id . map (\(x, y) -> x == y)

-- takeWhile id
-- Funkcja id (tożsamość) w tym kontekście 
-- to po prostu sprawdzenie, czy wartość to 
-- True. takeWhile id bierze elementy z 
-- listy tak długo, jak długo są one True. 
-- Gdy napotka pierwsze False, przerywa.