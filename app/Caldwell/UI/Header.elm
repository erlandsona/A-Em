module Caldwell.UI.Header exposing (..)

-- Libs

import Html exposing (..)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types.UI exposing (Msg(..))


view : Bool -> Html Msg
view bool =
    header [ clickWithStopProp (ToggleNav bool) ]
        [ text "Caldwell" ]
