main = interact wordCount
wordCount input = show (length (lines input)) <> "\n"
