module MyLib where

import Control.Monad.Primitive
import qualified Data.HashTable.ST.Basic as H

data Symbol a = Symbol

data Node s a = Node

data Rule s a = Rule (Node s a)

data S s a
  = S
  { table :: H.HashTable s (Symbol a, Symbol a) (Node s a)
  }

getNext :: PrimMonad m => Node (PrimState m) a -> m (Node (PrimState m) a)
getNext = undefined

nodeSymbol :: Node s a -> Symbol a
nodeSymbol = undefined

newRule :: PrimMonad m => S (PrimState m) a -> (Symbol a, Symbol a) -> m (Rule (PrimState m) a)
newRule = undefined

f :: PrimMonad m => S (PrimState m) a -> Node (PrimState m) a -> m ()
f s n1 = do
  n2 <- getNext n1
  let x = (nodeSymbol n1, nodeSymbol n2)
  ret <- stToPrim $ H.lookup (table s) x
  case ret of
    Nothing -> return ()
    Just n1' -> do
      n2' <- getNext n1'
      ret <- g n1' n2'
      case ret of
        Just _ -> return ()
        Nothing -> do
          rule <- newRule x
          h s n1  rule
          return ()

g :: PrimMonad m => S (PrimState m) a -> Node (PrimState m) a -> Node (PrimState m) a -> m (Maybe (Rule (PrimState m) a))
g = undefined

h :: PrimMonad m => S (PrimState m) a -> Node (PrimState m) a -> Rule (PrimState m) a  -> m ()
h = undefined
