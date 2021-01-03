# some-instance

Existential quantification over typeclasses

## key definitions

```
-- Data.SomeInstance

data SomeInstance k = forall a. k a => SomeInstance a -- constructor exported as well
withSomeInstance :: SomeInstance a -> (forall a. k a => a -> b) -> b
```

this allows for heterogenous collections as follows

```
import Data.SomeInstance

showables :: [SomeInstance Show]
showables = [SomeInstance 3, SomeInstance True]

-- prints ["3","True"]
main :: IO ()
main = print $ fmap (\a -> withSomeInstance a show) showables
```
