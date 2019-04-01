palindrome : String -> Bool
palindrome x = let l = toLower x in
                   l == reverse l
