data Mb a = Mb [a] [a]
  deriving (Show, Eq)

pusty :: Mb a
pusty = Mb [] []

dnp :: Mb a -> a -> Mb a
dnp (Mb p k) e = (Mb (e:p) k)

dnk :: Mb a -> a -> Mb a
dnk (Mb p k) e = (Mb p (k++[e]))

mb2list :: Mb a -> [a]
mb2list (Mb p k) = (p++k)

ull :: Mb a -> Mb a
ull (Mb p k) = (Mb [] k)

upl :: Mb a -> Mb a
upl (Mb p k) = (Mb p [])