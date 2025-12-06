bp:: Int -> [String]
bp n | not (n `mod` 4 == 0) = []
     | otherwise = map (\x -> x ++ reverse x) (pali (n `div` 4) (n `div` 4) (n `div` 2))

pali :: Int -> Int -> Int -> [String]
pali _ _ 0 = [""] 
pali aa bb n
  | aa > 0 && bb > 0 = map ('a':) (pali (aa - 1) bb (n - 1))  
                       ++ map ('b':) (pali aa (bb - 1) (n - 1)) 
  | aa > 0           = map ('a':) (pali (aa - 1) bb (n - 1))  
  | bb > 0           = map ('b':) (pali aa (bb - 1) (n - 1)) 
  | otherwise        = [] 