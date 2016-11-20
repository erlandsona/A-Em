module Caldwell.UI.Header exposing (..)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (toggle)
import Caldwell.Types.UI exposing (Msg, Nav(..))


view : Nav -> Html Msg
view navbar =
    header [ onClick (toggle navbar) ]
        [ text "Caldwell" ]
