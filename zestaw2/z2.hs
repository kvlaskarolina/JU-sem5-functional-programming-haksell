f:: ( Num a, Ord a) => a -> a -> String
f x y   | ((x * y) > (x + y ) ) = "iloczyn jest wiekszy od sumy"
        | otherwise = "iloczyn nie jest wiekszy od sumy"
    
