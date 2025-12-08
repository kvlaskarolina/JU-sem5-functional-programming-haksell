data Bsk a = [a]

de:: Bsk a -> a -> Bsk a
de (Bsk lista) x = (Bsk (lista++[x]))

oe:: Bsk a -> a 
oe (Bsk lista)  = (last lista)

ue:: Bsk a -> Bsk a
ue (Bsk lista) = (Bsk (init lista))

le:: Eq a => Bsk a -> Integer
le (Bsk lista) = length(filter (\x->x == (head lista)))

bsk2l :: Bsk a -> [a]
bsk2l ( Bsk a ) = a