import Data.Vect

vectTake : (n: Nat) -> Vect (n + m) elem -> Vect n elem
vectTake Z xs = []
vectTake (S n) (x :: xs) = x :: (vectTake n xs)
