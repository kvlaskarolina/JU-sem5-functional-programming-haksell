wiekszeOd :: (Ord a) => [a] -> a -> [a]
wiekszeOd lista a = [x | x <- lista, x > a]

wiekszeOd' lista a = filter (> a) lista

wiekszeOd'' lista a = filter (> a) lista

f a lista = filter (> a) lista

f' :: (Ord a) => a -> [a] -> [a]
f' a = filter (> a)

f'' :: (Ord a) => a -> [a] -> [a]
f'' = filter . flip (>)

wiekszeOd''' :: (Ord a) => [a] -> a -> [a]
wiekszeOd''' = flip (filter . flip (>))
