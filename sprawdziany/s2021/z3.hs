cp :: [Integer] -> [Integer]
cp p = map
        (fromIntegral.length)
        (filter
            (\ls -> ls == filter (\el -> el <= fromIntegral(length ls)) ls)
            (map
                (\n -> take n p)
                [1..fromIntegral (length p)]
            )
        )