main = do
  putStrLn "Hello"
  putStrLn "World"

positive :: (Ord a, Num a) => (a -> Bool)
positive x = (x>0) == True
findpos :: (Ord a, Num a) => [a] -> [a]
findpos xs = filter positive xs

sqradd :: (Eq a, Num a) => a -> a
sqradd x
  | x == 0 = 0
  | otherwise = x * x + sqradd (x -1)

smaller x y
  |x<y=x
  |otherwise = y

weather x
  |x>=80="Hot!"
  |x>=70="Nice!"
  |otherwise="Cold!"

signum x
  |x>0       = 1
  |x==0      = 0
  |otherwise = -1

factorial n
  |n==0      = 1
  |otherwise = n*factorial(n-1)

printN' n
  |n==0      =""
  |otherwise = printN'(n-1)++ show n ++ "\n"

printN::Integer -> IO ()
printN n=putStr (printN' n)

sumElems :: Num a => [a] -> a
sumElems list
  | list == [] = 0
  | otherwise  = head list + sumElems(tail list)