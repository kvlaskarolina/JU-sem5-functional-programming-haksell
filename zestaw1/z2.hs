quadit x = 4*x
tripleit x = 3*x
sumaWartosci :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> Int
sumaWartosci f g x y = (f x) + (g y)
zadB = sumaWartosci quadit tripleit