type Point = (Double, Double)

dist :: Point -> Point -> Double
dist (ax, ay) (bx, by) = sqrt $ (ax - bx) * (ax - bx) + (ay - by) * (ay - by)

minDist :: [Point] -> (Point, Point, Double)
minDist ps =
  let (d, a, b) = minimum [(dist a b, a, b) | (i, a) <- zip [1 ..] ps, (j, b) <- zip [1 ..] ps, i /= j]
   in (a, b, d)
 