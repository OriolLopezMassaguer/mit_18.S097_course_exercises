 {-# LANGUAGE MultiParamTypeClasses #-}
 {-# LANGUAGE FunctionalDependencies #-}
 --  pset1
-- q1
-- q1.a
f::Int -> Int
f x = x^2

g::Int -> Int
g x = x + 1

-- q1.b
h = f . g
-- h 2 = 9
-- q1.c 
i =  g . f -- f;g inverse composition
-- i 2 = 5

-- q7 church booleans

church_true = \x -> \y -> x
church_false = \x -> \y -> y
--church_and = \p -> (\q -> ((p q) p))

class Category obj mor | mor -> obj where
    dom :: mor -> obj
    cod :: mor -> obj
    idy :: obj -> mor
    cmp :: mor -> mor -> Maybe mor


