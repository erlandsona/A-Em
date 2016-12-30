module Caldwell.UI.Header exposing (..)

-- Libs

import Html exposing (..)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Nav(..))

view : Nav -> Html Msg
view nav =
    header [ clickWithStopProp (Toggle <| not nav) ]
        [ text "Caldwell" ]



not : Nav -> Nav
not navState =
    case navState of
        Open -> Closed
        Closed -> Open
