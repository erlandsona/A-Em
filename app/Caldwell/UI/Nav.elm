module Caldwell.UI.Nav exposing (view)

-- Libs

import Html exposing (..)
import Html.Attributes exposing (href)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Page(..))


view : Bool -> Html Msg
view bool =
    nav [ clickWithStopProp (ToggleNav bool) ]
        [ aTag Home
        , aTag Music
        , aTag Shows
        , aTag About
        , aTag Contact
        ]


aTag : Page -> Html Msg
aTag page =
    a [ onClick (SetUrl page) ]
        [ text (toString page) ]

