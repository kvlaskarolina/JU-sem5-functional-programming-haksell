data Gkt a = Gkt [a] Int (Gkt a -> Bool)

gp :: (Gkt a -> Bool) -> Gkt a
gp f = Gkt [] 0 f 

de :: a -> Gkt a -> Gkt a
de x g@(Gkt a licznik f)  
  | f g = Gkt [x] (licznik+1) f 
  | otherwise = Gkt (x:a) licznik f

oe :: Gkt a ->  a  
oe (Gkt (x:xs) _ _) = x

ue :: Gkt a -> Gkt a  
ue (Gkt [] licznik f) = Gkt [] licznik f
ue (Gkt (x:xs) licznik f) = Gkt xs licznik f

loo :: Gkt a -> Int
loo (Gkt _ licznik _) = licznik

g21 :: Gkt a -> [a]
g21 (Gkt a _ _) = reverse a