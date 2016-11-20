module Caldwell exposing (main)

-- Libs

import Navigation exposing (program)


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)
import Caldwell.Model exposing (Model, init)
import Caldwell.Types.UI exposing (Msg)


main : Program Never Model Msg
main =
    program GoToUrl
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
