module Caldwell.UI.Nav exposing (view)

-- Libs

import Html exposing (..)
import Html.Attributes exposing (href)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (toggle)
import Caldwell.Types.UI exposing (Msg(..), Nav(..))


view : Nav -> Html Msg
view navbar =
    nav [ onClick (toggle navbar) ]
        [ a [ href "/" ]
            [ text "Home" ]
        , a [ href "/music" ]
            [ text "Music" ]
        , a [ href "/shows" ]
            [ text "Shows" ]
        , a [ href "/about" ]
            [ text "About" ]
        , a [ href "/contact" ]
            [ text "Contact" ]
        ]
