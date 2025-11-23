
data Matrix2x2 = Matrix2x2 {
    aa :: Int,  
    ab :: Int,  
    ba :: Int,  
    bb :: Int   
} deriving (Eq, Show)

addMatrix :: Matrix2x2 -> Matrix2x2 -> Matrix2x2
addMatrix m1 m2 = Matrix2x2 {
    aa = aa m1 + aa m2,
    ab = ab m1 + ab m2,
    ba = ba m1 + ba m2,
    bb = bb m1 + bb m2
}

multiplyMatrix :: Matrix2x2 -> Matrix2x2 -> Matrix2x2
multiplyMatrix m1 m2 = Matrix2x2 {
    aa = (aa m1 * aa m2) + (ab m1 * ba m2),
    ab = (aa m1 * ab m2) + (ab m1 * bb m2),
    ba = (ba m1 * aa m2) + (bb m1 * ba m2),
    bb = (ba m1 * ab m2) + (bb m1 * bb m2)
}

instance Num Matrix2x2 where
    (+) = addMatrix
    (*) = multiplyMatrix
    negate m = Matrix2x2 (negate (aa m)) (negate (ab m)) (negate (ba m)) (negate (bb m))
    fromInteger n = Matrix2x2 (fromInteger n) 0 0 (fromInteger n)

instance Show Matrix2x2 where
    show m =
        "| " ++ show (aa m) ++ " " ++ show (ab m) ++ " |\n" ++
        "| " ++ show (ba m) ++ " " ++ show (bb m) ++ " |"


prettyPrint :: Matrix2x2 -> String
prettyPrint m =
    let
        s_aa = show (aa m)
        s_ab = show (ab m)
        s_ba = show (ba m)
        s_bb = show (bb m)

        w1 = max (length s_aa) (length s_ba)
        w2 = max (length s_ab) (length s_bb)

        pad str width = replicate (width - length str) ' ' ++ str

        line1 = "| " ++ pad s_aa w1 ++ " " ++ pad s_ab w2 ++ " |"
        line2 = "| " ++ pad s_ba w1 ++ " " ++ pad s_bb w2 ++ " |"
    in
        line1 ++ "\n" ++ line2