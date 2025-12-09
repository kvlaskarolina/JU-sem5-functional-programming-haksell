maksymalnaDlugosc :: (a -> Bool) -> [a] -> Int
maksymalnaDlugosc f list =
  maximum
    ( 0
        : [ dlugosc | i <- [0 .. n - 1], j <- [i .. n - 1], let podciag = take (j - i + 1) (drop i list), let dlugosc = length podciag, dlaKazdego f podciag
          ]
    )
  where
    n = length list

dlaKazdego :: (a -> Bool) -> [a] -> Bool
dlaKazdego f = foldl (\x y -> x && f y) True

podciag :: (a -> Bool) -> [a] -> [a]
podciag f list | length (head (dzialajacePodciagi f list)) == maksymalnaDlugosc f list = head (dzialajacePodciagi f list)

dzialajacePodciagi :: (a -> Bool) -> [a] -> [[a]]
dzialajacePodciagi f list = filter (dlaKazdego f) (podciagi f list)

podciagi :: (a -> Bool) -> [a] -> [[a]]
podciagi f list =
  [ p | i <- [0 .. n - 1], j <- [i .. n - 1], let p = take (j - i + 1) (drop i list)
  ]
  where
    n = length list