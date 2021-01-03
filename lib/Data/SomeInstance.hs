{-# LANGUAGE
    ConstraintKinds,
    GADTs,
    RankNTypes
#-}

module Data.SomeInstance (
    SomeInstance(..),
    withSomeInstance
) where

data SomeInstance k = forall a. k a => SomeInstance a

withSomeInstance :: SomeInstance k -> (forall a. k a => a -> b) -> b
withSomeInstance (SomeInstance a) f = f a
