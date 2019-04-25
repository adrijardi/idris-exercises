internal_reverse : List a -> List a -> List a
internal_reverse [] acc = acc
internal_reverse (x :: xs) acc = internal_reverse xs (x :: acc)

my_reverse : List a -> List a
my_reverse l = internal_reverse l []
