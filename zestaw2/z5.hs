

pom :: (Int,Int) -> [Int]
pom p
    | p == (0, 0)             = [1,2,3,4]   
    | fst p == 0 && snd p > 0 = [1,2]      
    | fst p < 0 && snd p == 0 = [2,3]       
    | fst p == 0 && snd p < 0 = [3,4]       
    | fst p > 0 && snd p == 0 = [1,4]       
    | fst p > 0 && snd p > 0  = [1]        
    | fst p < 0 && snd p > 0  = [2]        
    | fst p < 0 && snd p < 0  = [3]         
    | otherwise               = [4]        

policz :: [(Int,Int)] -> [Int]
policz = concatMap pom

ktoraCwiartka :: [(Int,Int)] -> Int
ktoraCwiartka list
    | c1 >= c2 && c1 >= c3 && c1 >= c4 = 1
    | c2 >= c1 && c2 >= c3 && c2 >= c4 = 2
    | c3 >= c1 && c3 >= c2 && c3 >= c4 = 3
    | otherwise                        = 4 
    where
        l = policz list
        count x = length (filter (== x) l)
        c1 = count 1
        c2 = count 2
        c3 = count 3
        c4 = count 4