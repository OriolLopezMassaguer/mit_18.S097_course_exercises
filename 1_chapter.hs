{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}

main =putStrLn "hello"

despace = concat . words::String -> [Char]

---exercise 1.38

class Category obj mor | mor -> obj where
    dom :: mor -> obj
    cod :: mor -> obj
    idy :: obj -> mor
    cmp :: mor -> mor -> Maybe mor 

instance Monoid mor => (Category () mor) where 
      dom _ = ()
      cod _ = ()
      idy _ = mempty
      cmp m n = Just (mappend m n)


    
     