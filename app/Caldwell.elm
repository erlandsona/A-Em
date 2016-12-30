module Caldwell exposing (main)

-- Libs

import Navigation exposing (programWithFlags)


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)
import Caldwell.Model exposing (Model, init)
import Caldwell.Types exposing (Msg(..), Page(..))
import Caldwell.Helpers exposing (urlParser)


main : Program Float Model Msg
main =
    programWithFlags GoToUrl
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
