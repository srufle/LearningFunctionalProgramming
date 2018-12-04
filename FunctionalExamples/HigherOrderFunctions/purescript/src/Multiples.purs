module Multiples where

import Prelude
import Data.Array
import Data.Foldable
-- Multiples of 3 and 5
-- https://projecteuler.net/problem=1
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, 
--    we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

range1_10 = range 1 10

mult_by_3 :: Int -> Int
mult_by_3 a = a * 3

mult_by_5 :: Int -> Int
mult_by_5 a = a * 5

threes :: forall f. Functor f => f Int -> f Int
threes = map (mult_by_3)

fives :: forall f. Functor f => f Int -> f Int
fives = map (mult_by_5)

-- all_multiples :: 