fib :: (Integer, Integer) -> [(Integer, Integer)]
fib a = a : fib (snd a, fst a + snd a)
--  map fst $ fib (0, 1)