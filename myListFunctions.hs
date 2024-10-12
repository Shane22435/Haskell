myAppend :: [a] -> a -> [a]
myAppend [] x = [x]
myAppend (y:ys) x = y : myAppend ys x

myHead :: [a] -> a
myHead [] = error "Empty list"
myHead (x:xs) = x

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (x:xs) = myLast xs

myTail :: [a] -> [a]
myTail [] = error "Empty list"
myTail (x:xs) = xs

myInit :: [a] -> [a]
myInit [] = error "Empty list"
myInit [x] = []
myInit (x:xs) = x : myInit xs

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myAppend (myReverse xs) x

myConcat :: [a] -> [a] -> [a]
myConcat [] finlist = finlist
myConcat (x:xs) baselist = x : myConcat xs baselist

myAdd :: Int -> Int -> Int
myAdd x y = x + y

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs