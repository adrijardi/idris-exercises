palindrome : String -> Bool
palindrome x = let l = toLower x in
                   l == reverse l

display : Bool -> String
display x = (show x) ++ "\n"

main : IO()
main = repl "Enter a string: " (\str => display (palindrome(str)))
