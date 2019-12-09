example2 xs i = if times + i > 10
                  then Just times
                  else Nothing
                  where times = length xs