-- Josh Post
-- CSC344
-- Extra Credit Assignment
-- Question 1: dup function
-- This program duplicates certain characters
-- within a string
 
dup :: Char -> [Char] -> [Char]
dup a [] = []
dup a (x:xs)
   | (x == a) = x : x : dup a xs
   |otherwise = x : dup a xs


main = do
   let x = dup 'a' "the cat in the hat has a fat head"
   let y = dup 'l' "haskell is a mind boggling language"
   let z = dup 'e' "I really hope I get extra credit for this one"
   putStrLn $ show $ x
   putStrLn $ show $ y
   putStrLn $ show $ z
