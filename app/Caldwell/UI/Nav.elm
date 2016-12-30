module Caldwell.UI.Nav exposing (view)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))


view : Nav -> Html Msg
view navState =
    nav [ clickWithStopProp (Toggle Closed) ]
        [ aTag Home
        , aTag Music
        , aTag Shows
        , aTag About
        , aTag Contact
        ]


aTag : Page -> Html Msg
aTag page =
    a [ onClick (SetUrl page) ]
        [ span [] [ text (toString page) ] ]
