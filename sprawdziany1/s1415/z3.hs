h:: [a] -> [a]
h = map fst . filter (even . snd) . zip id [0..]

-- h lista = map fst (filter (\(x, i) -> even i) (zip lista [0..]))