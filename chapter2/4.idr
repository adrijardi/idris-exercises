palindrome : String -> Bool
palindrome x = let l = toLower x in
                   length l > 10 && l == reverse l
