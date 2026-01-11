data Sdb a = Empty | Node a (Sdb a) | Node a (Sdb a) (Sdb a)
  deriving (Show, Eq)

