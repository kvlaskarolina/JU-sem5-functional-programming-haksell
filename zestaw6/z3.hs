mapL :: (b->a) -> [b] -> [a]
mapL f = foldl (\acc x -> acc ++ [(f x)]) []
 
mapR :: (b->a) -> [b] -> [a]
mapR f = foldr (\x acc -> (f x ) : acc)  []