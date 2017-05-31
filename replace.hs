-- Josh Post
-- CSC344
-- Extra Credit Assignment
-- Question 3: replace function
-- This program replaces parts of variables with
-- other ones

replace :: [a] -> (Int, Int) -> [a] -> [a]
replace (x:xs) (a,b) (y:ys) = (beginning (y:ys) a) ++ x:xs ++ (end (y:ys) b)

beginning :: [a] -> Int -> [a]
beginning (x:xs) i
   | (length (x:xs) == i) = x : xs
   | otherwise = beginning (x:(init xs)) i

end :: [a] -> Int -> [a]
end [] i = []
end (x:xs) i
   | (i == 0) = x:xs
   | otherwise = end xs (i-1)

main = do
   let x_orig = [100,200,300,400,500,600,700]
   let x_rep = replace [1,2,3] (4,5) x_orig
   putStrLn ("Original list: " ++ (show x_orig))
   putStrLn ("Replacement list: " ++ (show x_rep))
   let a = "a vote for me is a vote for the people"
   let b = length a
   let y = replace "big moneyed interests" (b-6,b) a
   putStrLn ("Original statement: " ++ a)
   putStrLn ("Replacement statement: " ++ (show y))
