module Main where

import Foreign.C

foreign import ccall unsafe "test.h example_add"
  example_add :: CLong -> CInt -> IO CLong

main = print =<< example_add 5 (-1)
