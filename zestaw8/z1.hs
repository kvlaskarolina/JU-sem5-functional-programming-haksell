silnia :: Integer -> Integer
silnia 0 = 1
silnia n = silnia (n - 1) * n
main = do 
 liczba<-getLine
 let a = read liczba :: Integer
 let wynik = silnia a
 print wynik