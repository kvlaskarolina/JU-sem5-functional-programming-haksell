data CT a  = Empty | Leaf a | Join (CT a) Op (CT a)

data Op = Add | Mul | Neg