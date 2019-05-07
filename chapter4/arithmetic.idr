data Expr = Val Int
          | Add Expr Expr
          | Subs Expr Expr
          | Mult Expr Expr

evaluate : Expr -> Int
evaluate (Val i) = i
evaluate (Add l r) = evaluate l + evaluate r
evaluate (Subs l r) = evaluate l - evaluate r
evaluate (Mult l r) = evaluate l * evaluate r
