
triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z =
    if x + y <= z || x + z <= y || y + z <= x 
        then error "Not a triangle"
        else sqrt (s * (s - x) * (s - y) * (s - z))
    where s = (x + y + z) / 2