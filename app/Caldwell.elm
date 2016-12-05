module Caldwell exposing (main)

-- Libs

import Maybe exposing (withDefault)
import Navigation exposing (programWithFlags, Location)
import UrlParser as Url


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)
import Caldwell.Model exposing (Model, init)
import Caldwell.Types exposing (Msg(..), Page(..))
import Caldwell.Helpers exposing (urlParser)



main : Program Float Model Msg
main =
    programWithFlags parseMsg
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }

parseMsg : Location -> Msg
parseMsg loc =
    GoToUrl (withDefault Home <| Url.parsePath urlParser loc)

