data Klos a = Klos [a] [a]
  deriving (Show, Eq)

pusty :: Klos a
pusty = Klos [] []

wnpk :: Klos a -> a -> Klos a
wnpk (Klos p k) e = (Klos (e:p) k)

wnkk :: Klos a -> a -> Klos a
wnkk (Klos p k) e = (Klos p (k++[e]))

k2list :: Klos a -> [a]
k2list (Klos p k) = (p ++ k)
