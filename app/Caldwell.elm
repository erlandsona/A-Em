module Caldwell exposing (main)

-- Libs

import Maybe exposing (withDefault)
import Navigation exposing (program, Location)
import UrlParser as Url


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)
import Caldwell.Model exposing (Model, init)
import Caldwell.Types.UI exposing (Msg(..), Page(..))
import Caldwell.Helpers exposing (urlParser)



main : Program Never Model Msg
main =
    program parseMsg
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }

parseMsg : Location -> Msg
parseMsg loc =
    GoToUrl (withDefault Home <| Url.parsePath urlParser loc)

