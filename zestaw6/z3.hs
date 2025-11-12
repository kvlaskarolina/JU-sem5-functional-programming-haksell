mapL :: (b->a) -> [b] -> [a]
mapL f = foldl (\xs x -> xs ++ [(f x)]) []
 
mapR :: (b->a) -> [b] -> [a]
mapR f = foldr (\x xs -> (f x ) : xs)  []