dlugoscPalindromow :: [String] -> Int
dlugoscPalindromow listaStringow = sum (map length (lista listaStringow))

czyPali :: String -> Bool
czyPali a = (a==reverse(a))

lista :: [String] -> [String]
lista = filter(czyPali)