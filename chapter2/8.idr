over_length : Nat -> List String -> Nat
over_length minLen l = length (filter (\str => length str > minLen) l)
