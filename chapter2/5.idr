palindrome : Nat -> String -> Bool
palindrome len str = let l = toLower str in
                         length l > len && l == reverse l
