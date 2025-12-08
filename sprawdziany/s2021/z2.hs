data Tree a = Empty | Node a (Tree a) (Tree a) 
    deriving (Show, Eq)

findPath :: Eq a => a -> Tree a -> [a]
findPath x Empty = []
findPath x (Node root leftTree rightTree)
    | x == root = [root]
    | leftPath /= [] = root:leftPath
    | rightPath /= [] = root:rightPath
    | otherwise = []
    where leftPath = findPath x leftTree
          rightPath = findPath x rightTree

t :: Tree Int
t = Node 10 
      (Node 5 
        (Node 4 Empty Empty) 
        (Node 6 Empty Empty)) 
      (Node 20 Empty Empty)