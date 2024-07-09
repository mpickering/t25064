```
[matt@nixos:/tmp/simon-repo]$ cabal build
Resolving dependencies...
Build profile: -w ghc-9.6.3 -O1
In order, the following will be built (use -v for more details):
 - os-string-2.0.6 (lib) (requires build)
 - filepath-1.5.3.0 (lib) (requires download & build)
 - hashable-1.4.7.0 (lib) (requires build)
 - hashtables-1.3.1 (lib) (requires build)
 - simon-repo-0.1.0.0 (lib) (first run)
Downloading  filepath-1.5.3.0
Starting     os-string-2.0.6 (lib)
Building     os-string-2.0.6 (lib)
Downloaded   filepath-1.5.3.0
Installing   os-string-2.0.6 (lib)
Completed    os-string-2.0.6 (lib)
Starting     filepath-1.5.3.0 (lib)
Building     filepath-1.5.3.0 (lib)
Installing   filepath-1.5.3.0 (lib)
Completed    filepath-1.5.3.0 (lib)
Starting     hashable-1.4.7.0 (lib)
Building     hashable-1.4.7.0 (lib)
Installing   hashable-1.4.7.0 (lib)
Completed    hashable-1.4.7.0 (lib)
Starting     hashtables-1.3.1 (lib)
Building     hashtables-1.3.1 (lib)
Installing   hashtables-1.3.1 (lib)
Completed    hashtables-1.3.1 (lib)
Configuring library for simon-repo-0.1.0.0..
Preprocessing library for simon-repo-0.1.0.0..
Building library for simon-repo-0.1.0.0..
[1 of 1] Compiling MyLib            ( src/MyLib.hs, /tmp/simon-repo/dist-newstyle/build/x86_64-linux/ghc-9.6.3/simon-repo-0.1.0.0/build/MyLib.o, /tmp/simon-repo/dist-newstyle/build/x86_64-linux/ghc-9.6.3/simon-repo-0.1.0.0/build/MyLib.dyn_o )

src/MyLib.hs:35:7: warning: [GHC-63397] [-Wname-shadowing]
    This binding for ‘ret’ shadows the existing binding
      bound at src/MyLib.hs:30:3
   |
35 |       ret <- g n1' n2'
   |       ^^^

<no location info>: error:
    panic! (the 'impossible' happened)
  GHC version 9.6.3:
	lookupIdSubst
  $dPrimMonad_a1F7
  InScope {m_a1pU a_a1pV $dPrimMonad_a1pW table getNext nodeSymbol
           newRule g h}
  Call stack:
      CallStack (from HasCallStack):
        callStackDoc, called at compiler/GHC/Utils/Panic.hs:189:37 in ghc:GHC.Utils.Panic
        pprPanic, called at compiler/GHC/Core/Subst.hs:197:17 in ghc:GHC.Core.Subst
  CallStack (from HasCallStack):
    panic, called at compiler/GHC/Utils/Error.hs:454:29 in ghc:GHC.Utils.Error


Please report this as a GHC bug:  https://www.haskell.org/ghc/reportabug

Error: cabal: Failed to build simon-repo-0.1.0.0.


[matt@nixos:/tmp/simon-repo]$ cabal build -w /home/matt/ghc-rodrigo/_build/stage1/bin/ghc
Warning: Unknown/unsupported 'ghc' version detected (Cabal 3.10.2.1 supports
'ghc' version < 9.10): /home/matt/ghc-rodrigo/_build/stage1/bin/ghc is version
9.11.20240529
Resolving dependencies...
Build profile: -w ghc-9.11.20240529 -O1
In order, the following will be built (use -v for more details):
 - hashable-1.4.7.0 (lib) (requires build)
 - primitive-0.9.0.0 (lib) (requires build)
 - vector-stream-0.1.0.1 (lib) (requires build)
 - vector-0.13.1.0 (lib) (requires build)
 - hashtables-1.3.1 (lib) (requires build)
 - simon-repo-0.1.0.0 (lib) (first run)
Starting     vector-stream-0.1.0.1 (lib)
Starting     hashable-1.4.7.0 (lib)
Starting     primitive-0.9.0.0 (lib)
Building     vector-stream-0.1.0.1 (lib)
Building     primitive-0.9.0.0 (lib)
Building     hashable-1.4.7.0 (lib)
Installing   hashable-1.4.7.0 (lib)
Installing   vector-stream-0.1.0.1 (lib)
Completed    hashable-1.4.7.0 (lib)
Completed    vector-stream-0.1.0.1 (lib)
Installing   primitive-0.9.0.0 (lib)
Completed    primitive-0.9.0.0 (lib)
Starting     vector-0.13.1.0 (lib)
Building     vector-0.13.1.0 (lib)
Installing   vector-0.13.1.0 (lib)
Completed    vector-0.13.1.0 (lib)
Starting     hashtables-1.3.1 (lib)
Building     hashtables-1.3.1 (lib)
Installing   hashtables-1.3.1 (lib)
Completed    hashtables-1.3.1 (lib)
Configuring library for simon-repo-0.1.0.0..
Preprocessing library for simon-repo-0.1.0.0..
Building library for simon-repo-0.1.0.0..
[1 of 1] Compiling MyLib            ( src/MyLib.hs, /tmp/simon-repo/dist-newstyle/build/x86_64-linux/ghc-9.11.20240529/simon-repo-0.1.0.0/build/MyLib.o, /tmp/simon-repo/dist-newstyle/build/x86_64-linux/ghc-9.11.20240529/simon-repo-0.1.0.0/build/MyLib.dyn_o )
src/MyLib.hs:35:14: error: [GHC-25897]
    • Couldn't match type ‘m’ with ‘(->) (Node (PrimState Maybe) a)’
      Expected: m (Maybe (Maybe (Rule (PrimState Maybe) a)))
        Actual: Node (PrimState Maybe) a
                -> Maybe (Maybe (Rule (PrimState Maybe) a))
      ‘m’ is a rigid type variable bound by
        the type signature for:
          f :: forall (m :: * -> *) a.
               PrimMonad m =>
               S (PrimState m) a -> Node (PrimState m) a -> m ()
        at src/MyLib.hs:26:1-69
    • In a stmt of a 'do' block: ret <- g n1' n2'
      In the expression:
        do n2' <- getNext n1'
           ret <- g n1' n2'
           case ret of
             Just _ -> return ()
             Nothing -> do ...
      In a case alternative:
          Just n1'
            -> do n2' <- getNext n1'
                  ret <- g n1' n2'
                  case ret of
                    Just _ -> return ()
                    Nothing -> ...
    • Relevant bindings include
        n2' :: Node (PrimState m) a (bound at src/MyLib.hs:34:7)
        n1' :: Node (PrimState m) a (bound at src/MyLib.hs:33:10)
        ret :: Maybe (Node (PrimState m) a) (bound at src/MyLib.hs:30:3)
        x :: (Symbol a, Symbol a) (bound at src/MyLib.hs:29:7)
        n2 :: Node (PrimState m) a (bound at src/MyLib.hs:28:3)
        n1 :: Node (PrimState m) a (bound at src/MyLib.hs:27:5)
        (Some bindings suppressed; use -fmax-relevant-binds=N or -fno-max-relevant-binds)
   |
35 |       ret <- g n1' n2'
   |              ^^^^^^^^^

Error: cabal: Failed to build simon-repo-0.1.0.0.
```


