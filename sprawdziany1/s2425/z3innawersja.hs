data Gkt a = Gkt {predykat :: (Gkt a -> Bool), ciałko :: [a], discarded :: Int}
 
instance Show a => Show (Gkt a) where
    show gekon = show (ciałko gekon)
 
gp :: (Gkt a -> Bool) -> Gkt a
gp predykacik = Gkt {predykat = predykacik, ciałko = [], discarded = 0}
 
de :: a -> Gkt a -> Gkt a
de wartość gekon 
    | (length (ciałko gekon) == 0) || not ((predykat gekon) gekon) = Gkt{predykat = (predykat gekon), ciałko = [wartość] ++ (ciałko gekon), discarded = (discarded gekon)}
    | otherwise = Gkt{predykat = (predykat gekon), ciałko = [wartość], discarded = (discarded gekon) + 1}
 
oe :: Gkt a -> a
oe gekon = head $ ciałko gekon
 
ue :: Gkt a -> Gkt a
ue Gkt {predykat = p, ciałko = [], discarded = d} = Gkt {predykat = p, ciałko = [], discarded = d}
ue gekon = Gkt {predykat = (predykat gekon), ciałko = (tail $ ciałko gekon), discarded = (discarded gekon)}
 
loo :: Gkt a -> Int
loo gekon = discarded gekon
 
g21 :: Gkt a -> [a]
g21 gekon = ciałko gekon
 
samplePredicate :: Gkt Int -> Bool
samplePredicate gekon = (==) 0 $ head $ ciałko gekon