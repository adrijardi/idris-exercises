import Data.Vect

createEmpties : Vect n (Vect 0 elem)
createEmpties = replicate _ []

transposeMat : Vect m (Vect n elem) -> Vect n (Vect m elem)
transposeMat [] = createEmpties
transposeMat (x :: xs) = let xsTrans = transposeMat xs in
                             zipWith (::) x xsTrans
                             
addMatrix : Num a => Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
addMatrix [] [] = []
addMatrix (x :: xs) (y :: ys) = zipWith (+) x y :: addMatrix xs ys

multCol : Num a => Vect m a -> Vect m a -> a
multCol xs ys = sum (zipWith (*) xs ys)

multRow : Num a => Vect m a -> Vect p (Vect m a) -> Vect p a
multRow xs [] = []
multRow xs (y :: ys) = multCol xs y :: multRow xs ys

multTrans : Num a => Vect n (Vect m a) -> Vect p (Vect m a) -> Vect n (Vect p a)
multTrans [] ys = []
multTrans (x :: xs) ys = multRow x ys :: multTrans xs ys

multMatrix : Num a => Vect n (Vect m a) -> Vect m (Vect p a) -> Vect n (Vect p a)
multMatrix xs ys = let ysTrans = transposeMat ys in
                       multTrans xs ysTrans
