data Expr a = Value a
            | Add (Expr a) (Expr a)
            | Mul (Expr a) (Expr a)
            | Sub (Expr a) (Expr a)
            | P
            deriving Show

-- Funkcja eq sprawdzająca równoważność wyrażeń
eq :: Eq a => Expr a -> Expr a -> Bool
eq e1 e2 = eq' e1 e2
  where
    -- Porównanie z podstawieniem P na dowolne wyrażenie
    eq' (Value x) (Value y) = x == y
    eq' (Add e1 e2) (Add e3 e4) = (eq' e1 e3 && eq' e2 e4) || (eq' e1 e4 && eq' e2 e3)
    eq' (Mul e1 e2) (Mul e3 e4) = (eq' e1 e3 && eq' e2 e4) || (eq' e1 e4 && eq' e2 e3)
    eq' (Sub e1 e2) (Sub e3 e4) = eq' e1 e3 && eq' e2 e4
    eq' P _ = True
    eq' _ P = True
    eq' _ _ = False

-- Przykłady użycia:
-- eq (Add (Value 1) (Value 2)) (Add (Value 1) (Value 3)) = False
-- eq (Add (Value 1) (Value 2)) P = True
-- eq (Add (Value 1) P) (Add (Value 1) (Value 5)) = True
-- eq (Add (Value 1) (Value 2)) (Add (Value 2) (Value 1)) = True (dodawanie przemienne)