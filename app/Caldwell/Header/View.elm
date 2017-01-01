module Caldwell.Header.View exposing (template)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Types exposing (Msg(..), Page(..))

template : Html Msg
template =
    header [ onClick (SetUrl Home) ]
        [ text "caldwell" ]
