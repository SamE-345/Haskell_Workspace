uniqueNum :: [Int] -> Int -> Bool
uniqueNum xs y = listLength (filter (==y) xs) == 1


listLength :: [Int] -> Int
listLength [] = 1
listLength (x:xs) = 1+ listLength xs 

