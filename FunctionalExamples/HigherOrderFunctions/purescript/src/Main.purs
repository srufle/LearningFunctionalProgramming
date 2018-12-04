module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.Array
import Data.Foldable
import Multiples
import Math

my_range = (1..10)
my_3s = threes my_range
my_5s = fives my_range
my_numbers  = sort(nub(
                    my_3s <> my_5s
                    ))

main :: Effect Unit
main = do
  log $ "multiples of threes = " <> show (my_3s)
  log $ "multiples of fives = " <> show (my_5s)
  log $ "remove duplicates and sort = " <> show (my_numbers)
  log $ "sum of numbers = " <> show (sum my_numbers)
