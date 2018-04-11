module ConsoleLifted where

import Prelude

import Control.Monad.Eff.Class (class MonadEff, liftEff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Console as Console

log :: forall m eff. MonadEff (console :: CONSOLE | eff) m => String -> m Unit
log = liftEff <<< Console.log

logShow
  :: forall a m eff
   . Show a
  => MonadEff (console :: CONSOLE | eff) m
  => a -> m Unit
logShow = liftEff <<< Console.logShow

warn :: forall m eff. MonadEff (console :: CONSOLE | eff) m => String -> m Unit
warn = liftEff <<< Console.warn

warnShow
  :: forall a m eff
   . Show a
  => MonadEff (console :: CONSOLE | eff) m
  => a -> m Unit
warnShow = liftEff <<< Console.warnShow

error :: forall m eff. MonadEff (console :: CONSOLE | eff) m => String -> m Unit
error = liftEff <<< Console.error

errorShow
  :: forall a m eff
   . Show a
  => MonadEff (console :: CONSOLE | eff) m
  => a -> m Unit
errorShow = liftEff <<< Console.errorShow

info :: forall m eff. MonadEff (console :: CONSOLE | eff) m => String -> m Unit
info = liftEff <<< Console.info

infoShow
  :: forall a m eff
   . Show a
  => MonadEff (console :: CONSOLE | eff) m
  => a -> m Unit
infoShow = liftEff <<< Console.infoShow
