
podlisty :: [Integer] -> [[Integer]]
podlisty [] = [[]]
podlisty (x:xs) =
  let reszta = podlisty xs
  in reszta ++ dodajNaPoczatek x reszta
  where
    dodajNaPoczatek _ [] = []
    dodajNaPoczatek y (z:zs) = (y:z) : dodajNaPoczatek y zs

podlistyDlugosci :: Integer -> [Integer] -> [[Integer]]
podlistyDlugosci k xs =
  [ ys | ys <- podlisty xs, dlugosc ys == k ]
  where
    dlugosc [] = 0
    dlugosc (_:zs) = 1 + dlugosc zs
