module Caldwell.UI.Nav exposing (view)

-- Libs

import Html exposing (..)
import Html.Attributes exposing (href)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (toggle)
import Caldwell.Types.UI exposing (Msg(..), Nav(..), Page(..))


view : Nav -> Html Msg
view navbar =
    nav [ onClick (toggle navbar) ]
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

