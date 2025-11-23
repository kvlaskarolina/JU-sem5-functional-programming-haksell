data Tree a = Empty | Node a (Tree a) (Tree a)

czyp:: Tree -> Bool
czyp a =