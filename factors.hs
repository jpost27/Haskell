-- Josh Post
-- CSC344
-- Extra Credit Assignment
-- Question 4: factors function
-- This program finds the prime factors for
-- integers


prime = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]
factors :: Int -> [Int]
factors x = [y | y  <-  prime , x `mod` y == 0]


main = do
   let x = factors 33
   let y = factors 210
   let z = factors 642
   putStrLn ("The prime factors that go into 33 are: " ++ (show  x))
   putStrLn ("The prime factors that go into 210 are: " ++ (show  y))
   putStrLn ("The prime factors that go into 642 are: " ++ (show  z))
