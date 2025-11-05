fib :: (Integer, Integer) -> [(Integer, Integer)]
fib a = a : fib (snd a, fst a + snd a)

fib2 :: [(Integer, Integer)] -> [Integer]
fib2 = map snd (fib (0,1))

-- not working - to fix