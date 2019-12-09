import System.Environment (getArgs)

{-
3. Usingthecommandframeworkfromtheearliersection“ASimpleCommand-Line Framework” 
on page 71, 
write a program that prints the first word of each line of its input.
-}

firstWordInEachLine :: String -> [String]
firstWordInEachLine = map (head . words) . lines

printFileContentWith :: (String -> [String]) -> IO ()
printFileContentWith processContent = do
    [filePath] <- getArgs
    content <- readFile filePath
    print content
    where print = putStrLn . show . processContent

main = printFileContentWith firstWordInEachLine