myUnion :: Eq a => [a] -> [a] -> [a]
myUnion xs ys = xs ++ [y | y <- ys, y `notElem` xs]

myIntersect :: Eq a => [a] -> [a] -> [a]
myIntersect xs ys = [x | x <- xs, x `elem` ys]