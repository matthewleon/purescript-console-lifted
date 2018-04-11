module Test.Main where

import Prelude

import ConsoleLifted (log)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = log "this log brought to you by purescript-console-lifted"
