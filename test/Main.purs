module Test.Main where

import Prelude


import Data.Array (fold)
import Effect (Effect)
import Effect.Console (log)
import Test.Variant (test) as Variant
import Test.HList (testShow) as HList

main :: Effect Unit
main = do
  -- Variant
  log Variant.test
  -- HList
  log $ fold $ show <$> HList.testShow
