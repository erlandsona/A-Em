module Caldwell.Nav.View exposing (template)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))


template : Nav -> Html Msg
template navState =
    nav [ clickWithStopProp (Toggle Closed) ]
        [ aTag Music
        , aTag Shows
        , aTag About
        , aTag Contact
        ]


aTag : Page -> Html Msg
aTag page =
    a [ onClick (SetUrl page) ]
        [ span [] [ text (toString page) ] ]
