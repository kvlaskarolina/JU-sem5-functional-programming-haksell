jestPuntemStalym :: (Eq a) => a -> (a -> a) -> Bool
jestPuntemStalym b d = ( b ==  d b )