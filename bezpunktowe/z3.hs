m x list = map (\y -> y * x) list

m' x = map (\y -> y * x)

m'' x = map (* x)

m''' = map . (*)