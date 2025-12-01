f:: ( Num a, Ord a, Show a) => a -> a -> String
f x y   | ((x * y) > (x + y ) ) = "iloczyn jest wiekszy od sumy" ++ show x ++ show y
        | otherwise = "iloczyn nie jest wiekszy od sumy"
    
