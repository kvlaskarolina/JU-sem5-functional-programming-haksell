cztery :: [Int] -> Int
cztery xs = maximum (0 : [dlugosc | i <- [0..n-1], 
                                     j <- [i..n-1],
                                     let podciag = take (j-i+1) (drop i xs),
                                     let dlugosc = length podciag,
                                     sum podciag `mod` 4 == 0])
  where n = length xs