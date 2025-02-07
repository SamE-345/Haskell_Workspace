
uniqueNum :: [Int] -> Int -> Bool
uniqueNum xs y = (listLength (filter(== y) xs)) Prelude.== 1


listLength :: [Int] -> Int
listLength [] = 0
listLength (x:xs) = 1+ listLength xs 

 

loopRow :: [Int] -> Int -> Bool
loopRow xs y 
    | y == 10 = True
    | otherwise = uniqueNum xs (y+1) 
