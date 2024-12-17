isFactor :: Int -> Int -> Bool
isFactor x y = x `mod` y == 0

isPrime ::  Int -> Bool
isPrime x = (power 2 (x-1)) `mod` x == 1

power :: Int -> Int -> Int
power x y 
    | y == 0 = 1
    | otherwise = x* (power x (y-1))

primeFactors :: Int -> [Int]
primeFactors x = filter (isFactor x) (filter(isPrime) [2..x])

intToString :: [Int] -> String
intToString n = show n


    