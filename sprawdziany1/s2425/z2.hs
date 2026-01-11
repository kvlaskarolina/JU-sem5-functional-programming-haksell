slowa :: Integer -> Integer -> [String]
slowa m n = [ addA i ++ addB j | i <- [0..m], j <- [0..n], i /= j ]
  where
    addA 0 = ""
    addA k = 'a' : addA (k-1)
 
    addB 0 = ""
    addB k = 'b' : addB (k-1)

