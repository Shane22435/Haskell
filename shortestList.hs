shorterOfTwo :: [a] -> [a] -> [a]
shorterOfTwo a b = if length a < length b 
                        then a 
                        else b
shortest :: [[a]] -> [a]
shortest [] = [] -- if the list is empty return an empty list
    shortest (x:xs) = foldr shorterOfTwo x xs -- foldr "folds" through each element of the list from right to left and applies the shorterOfTwo function

