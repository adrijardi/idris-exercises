counts : String -> (Nat, Nat)
counts str = (length (words str), length str)

display : (Nat, Nat) -> String
display x = "Words: " ++ show (fst x) ++ ", Characters: " ++ show (snd x) ++ "\n"

main : IO()
main = repl "Enter a string: " (\str => display(counts(str)))
