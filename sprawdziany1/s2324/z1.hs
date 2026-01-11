ciagi :: Int -> [String]
ciagi n = generator n (n*2)

generator :: Int -> Int -> [String]
generator 0 0 = [""]
generator a 0 = map ('a':) (generator (a-1) 0)
generator 0 bc = map ('c':) (generator 0 (bc-1))++map ('b':) (generator 0 (bc-1))
generator a bc = map ('c':) (generator a (bc-1)) ++ map ('b':) (generator a (bc-1)) ++ map ('a':) (generator (a-1) bc)