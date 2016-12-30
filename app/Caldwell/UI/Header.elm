module Caldwell.UI.Header exposing (..)

-- Libs

import Html exposing (..)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Nav)

view : Nav -> Html Msg
view nav =
    header [ clickWithStopProp (Toggle nav) ]
        [ text "Caldwell" ]
