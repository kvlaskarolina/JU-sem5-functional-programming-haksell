data Wnr a = Wnr [[a]]
  deriving (Show)

wp :: Wnr a
wp = Wnr [[]]

dl :: (Num a) => Wnr a -> a -> Wnr a
dl (Wnr xs) x = Wnr (init xs ++ [last xs ++ [x]])

ts :: Wnr a -> Wnr a
ts (Wnr xs) = Wnr (xs ++ [[]])

wmax :: (Ord a) => Wnr a -> [a]
wmax (Wnr as) = map maximum as

wmin :: (Ord a) => Wnr a -> [a]
wmin (Wnr as) = map minimum as