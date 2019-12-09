import System.Environment (getArgs)
import Data.List (transpose)

{-
4. Write a program that transposes the text in a file. 
For instance, it should convert "hello\nworld\n" to "hw\neo\nlr\nll\nod\n".
-}

transposeLines :: String -> String
transposeLines = unlines . transpose . lines

printFileContentWith :: (String -> String) -> IO ()
printFileContentWith processContent = do
    [filePath] <- getArgs
    content <- readFile filePath
    putStrLn (processContent content)

main = printFileContentWith transposeLines