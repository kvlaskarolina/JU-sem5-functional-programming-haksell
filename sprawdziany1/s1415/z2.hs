data CT a = Empty | Leaf a | Join (CT a) Op (CT a)

data Op = Add | Mul | Neg

wf :: CT a -> Bool
wf Empty = False
wf (Leaf a) = True
wf (Join left Neg Empty) = wf left
wf (Join Empty Neg right) = wf right
wf (Join left Neg right) = False
wf (Join left operator right) = wf left && wf right

eval :: (Num a) => CT a -> a
eval c
  | not (wf c) = error "blad"
  | otherwise = evalHelper c

evalHelper :: (Num a) => CT a -> a
evalHelper (Leaf a) = a
evalHelper (Join left Add right) = evalHelper left + evalHelper right
evalHelper (Join left Mul right) = evalHelper left * evalHelper right
evalHelper (Join left Neg Empty) = negate (evalHelper left)
evalHelper (Join Empty Neg right) = negate (evalHelper right)
evalHelper _ = error "blad"

-- t = Join (Join (Leaf 3) Add (Leaf 2)) Mul (Join (Leaf 2) Neg Empty)