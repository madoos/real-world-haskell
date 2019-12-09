example xs i = let times = length xs
               in if times + i > 10
                  then Just times
                  else Nothing