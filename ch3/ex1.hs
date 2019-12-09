
import Data.List (sortBy)
{-
Write a function that computes the number of elements in a list. 
To test it, ensure that it gives the same answers as the standard length function.
-}

numItemsInList :: [a] -> Int
numItemsInList [] = 0
numItemsInList (_:xs) = 1 + numItemsInList xs

{-
Write a function that computes the mean of a list, i.e., 
the sum of all elements in the list divided by its length. 
(You may need to use the fromIntegral function to convert the length of the list from an integer into a floating-point number.)
-}

listAverage :: [Int] -> Int
listAverage [] = 0
listAverage xs = div total size
              where 
              total = sum xs
              size = length xs
              
{-
 Turn a list into a palindrome; i.e., 
 it should read the same both backward and forward. 
 For example, given the list [1,2,3], 
 your function should return [1,2,3,3,2,1].
 -}

toPalindrome :: [a] -> [a]              
toPalindrome xs = xs <> (reverse xs)


{- 
Write a function that determines whether its input list is a palindrome.
-}

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

{-
Create a function that sorts a list of lists based on the length of each sublist. 
(You may want to look at the sortBy function from the Data.List module.)
-}

sortByItemLength :: [[a]] -> [[a]]
sortByItemLength xs = sortBy lengthAscending xs
                where 
                lengthAscending x y
                    | length x > length y = GT
                    | length x < length y = LT
                    | otherwise = EQ
{-
Define a function that joins a list of lists together using a separator value:
ghci> :load Intersperse [1 of 1] Compiling Main Ok, modules loaded: Main. ghci> intersperse ',' [] ""
( Intersperse.hs, interpreted )
ghci> intersperse ',' ["foo"]
"foo"
ghci> intersperse ',' ["foo","bar","baz","quux"] "foo,bar,baz,quux"
-}

intersperse :: a -> [[a]] -> [a]
intersperse s xs = intersperseAcc [] xs
                  where 
                  intersperseAcc acc [] = acc
                  intersperseAcc [] (h:t) = intersperseAcc h t
                  intersperseAcc acc (h:t) = intersperseAcc (acc ++ [s] ++ h) t
