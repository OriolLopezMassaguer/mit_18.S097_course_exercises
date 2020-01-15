{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}


class Category_revised obj mor | mor -> obj , obj -> mor  where
    dom :: mor -> obj
    cod :: mor -> obj
    idy :: obj -> mor
    cmp :: mor -> mor -> Maybe mor 


data Objects = Ob1 | Ob2 deriving Show
data Morphisms = Id1 | Id2 | M12 deriving Show

instance Category_revised Objects Morphisms where
    dom Id1 = Ob1
    dom Id2 = Ob2
    dom M12 = Ob1
    cod Id1 = Ob1
    cod Id2 = Ob2
    cod M12 = Ob2
    cmp Id1 M12 = Just M12
    cmp M12 Id2 = Just M12
    cmp _ _ = Nothing
    idy Ob1 = Id1
    idy Ob2 = Id2
    
     