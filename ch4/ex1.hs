{-
1. Write your own “safe” definitions of the standard partial list functions,
but make sure they never fail. 
As a hint, you might want to consider using the following types:
-- file: ch04/ch04.exercises.hs 

safeHead :: [a] -> Maybe a 
safeTail :: [a] -> Maybe [a] 
safeLast :: [a] -> Maybe a 
safeInit :: [a] -> Maybe [a]

-}

-- safe :: ([a] -> *) -> [a] -> Maybe *
safe f xs 
    | null xs = Nothing
    | otherwise = Just (f xs) 

safeHead :: [a] -> Maybe a
safeHead = safe head

safeTail :: [a] -> Maybe [a] 
safeTail = safe tail

safeLast :: [a] -> Maybe a
safeLast = safe last

safeInit :: [a] -> Maybe [a]
safeInit = safe init
