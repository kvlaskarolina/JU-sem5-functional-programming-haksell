doDziesietnego:: Int -> [Int] ->Int
doDziesietnego base xs = foldl (\a b -> (a*base+b)) 0 xs 

