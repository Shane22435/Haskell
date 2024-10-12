triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z = sqrt ((x + y + z) / 2 * ((x + y + z) / 2 - x) * ((x + y + z) / 2 - y) * ((x + y + z) / 2 - z))
