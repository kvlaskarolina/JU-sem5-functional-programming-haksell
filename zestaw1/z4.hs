f :: Int -> Int -> Int
f 0 0 = 1
f n 0 = 0
f n k | n == k = 1
f n k | n > 0 && k > 0 = (n - 1) * f (n - 1) k + f (n - 1) (k - 1)