# some-instance

Existential quantification over typeclasses

## key definitions

```
-- Data.SomeInstance

data SomeInstance (k :: Constraint) = forall a. k a => SomeInstance a -- constructor exported as well
withSomeInstance :: SomeInstance a -> (forall a. k a => a -> b) -> b
```


