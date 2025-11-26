displayList :: [Integer] -> IO ()
displayList [] = return ()
displayList (x:xs) = do
 print x
 displayList xs

fib_nieskonczony :: [Integer]
fib_nieskonczony = 0 : 1 : zipWith (+) fib_nieskonczony (tail fib_nieskonczony)

fib :: Integer -> [Integer]
fib n = take (fromIntegral n) fib_nieskonczony

main = do 
 liczba<-getLine
 let n = read liczba :: Integer
 let fibfib = fib n
 displayList fibfib