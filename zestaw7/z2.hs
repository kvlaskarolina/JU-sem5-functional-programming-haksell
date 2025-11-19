data Calkowite = Zero | Nastepnik Calkowite | Poprzednik Calkowite
    deriving (Show, Eq) 

calToInt :: Calkowite -> Integer
calToInt Zero = 0
calToInt (Nastepnik x) = (calToInt x) + 1
calToInt (Poprzednik x) = (calToInt x) - 1

intToCal :: Integer -> Calkowite
intToCal x | x==0 = Zero
            | x>0 = Nastepnik (intToCal (x-1))
            | otherwise = Poprzednik (intToCal (x+1))
-- do testowania
jeden :: Calkowite
jeden = Nastepnik Zero

minusJeden :: Calkowite
minusJeden = Poprzednik Zero

dwa :: Calkowite
dwa = Nastepnik jeden

zeroZlozone :: Calkowite
zeroZlozone = Nastepnik (Poprzednik Zero)