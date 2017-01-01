module Caldwell.Header.View exposing (template)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Page(..))

template : Html Msg
template =
    header [ onClick (SetUrl Home) ]
        [ text "caldwell" ]



-- not : Nav -> Nav
-- not navState =
--     case navState of
--         Open -> Closed
--         Closed -> Open
