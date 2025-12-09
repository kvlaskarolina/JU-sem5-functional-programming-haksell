data Cep a = Cep [a] [a] (a -> Bool) Bool

cp :: (a -> Bool) -> Cep a
cp f = Cep [] [] f False

de :: a -> Cep a -> Cep a
de x (Cep dobre zle f b)
  | f x = Cep (dobre ++ [x]) zle f True
  | otherwise = Cep dobre (zle ++ [x]) f False

cd :: Cep a -> Bool
cd (Cep _ _ _ flag) = flag

zd :: Cep a -> Cep a
zd (Cep dobre zle f b)
  | b = Cep dobre zle f b
  | otherwise = Cep (dobre ++ [last zle]) (init zle) f True

ld :: Cep a -> [a]
ld (Cep dobre _ _ _) = dobre

lz :: Cep a -> [a]
lz (Cep _ zle _ _) = zle