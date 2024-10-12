type Poly = [Int]

pad :: Poly -> Int -> Poly
pad p maxLen = p ++ replicate (maxLen - length p) 0 -- replicate takes the first arg as the number of times to replicate the second arg

sumPoly :: Poly -> Poly -> Poly
sumPoly p1 p2 = zipWith (+) (pad p1 maxLen) (pad p2 maxLen) -- zipwith takes the two lists and args and applies an operation to each element
    where maxLen = max (length p1) (length p2)

combine :: Int -> Int -> Int -> Int
combine x coeff total = coeff + x * total -- combine takes x (the value), the coefficient, and the total and does the math for the polynomial

evalPoly :: Int -> Poly -> Int
evalPoly x coeffs = foldr (combine x) 0 coeffs -- foldr takes the function, combine, the base case, 0, and the list, coeffs, and applies the function to each coefficient
