-- Josh Post
-- CSC344
-- Extra Credit Assignment
-- Question 1: irepeat function
-- This program uses the irepeat function to
-- perform a function on a variable twice
import System.IO

-- For this question, I found the function at Haskell.org
irepeat :: (a -> a) -> a -> a
irepeat f x = f (f x)

main = do
   let x = irepeat (+3) 10
   let y = irepeat (++ " HAHA") "HEY"
   let z = irepeat (3:) [1]
   putStrLn ("irepeat (+3) 10 = ")
   putStrLn (show x)
   
   putStrLn ("irepeat (++ ' HAHA') 'HEY' = ")
   putStrLn (show y)
   
   putStrLn ("irepeat (3:) [1] = ")
   putStrLn (show z)
