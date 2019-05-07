maxMaybe : Ord a => Maybe a -> Maybe a -> Maybe a
maxMaybe Nothing r = r
maxMaybe l Nothing = l
maxMaybe (Just l) (Just r) = Just (max l r)

data Shape = Triangle Double Double
           | Rectangle Double Double
           | Circle Double

area : Shape -> Double
area (Triangle base height) = base * height * 0.5
area (Rectangle length height) = length * height
area (Circle radius) = pi * radius * radius

data Picture = Primitive Shape
             | Combine Picture Picture
             | Rotate Double Picture
             | Translate Double Double Picture

biggestTriangle : Picture -> Maybe Double
biggestTriangle (Primitive tri@(Triangle _ _)) = Just (area tri)
biggestTriangle (Primitive _) = Nothing
biggestTriangle (Combine l r) = maxMaybe (biggestTriangle l) (biggestTriangle r)
biggestTriangle (Rotate _ p) = biggestTriangle p
biggestTriangle (Translate _ _ p) = biggestTriangle p
