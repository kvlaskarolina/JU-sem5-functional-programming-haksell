d :: [Double] -> Double -> [Double]
d list x = map (\y -> y / x) list

d' list x = map (/ x) list

d'' list x = flip (f) list x

d''' = flip (f)

f :: Double -> [Double] -> [Double]
f x list = map (/ x) list

f' x = map (/ x)

f'' = map . flip (/)

d'''' :: [Double] -> Double -> [Double]
d'''' = flip (map . flip (/))