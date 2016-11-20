module Caldwell.UI.Nav exposing (view)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (toggle)
import Caldwell.Types.UI exposing (Msg(..), Page(..), Nav(..))


view : Nav -> Html Msg
view navbar =
    nav [ onClick (toggle navbar) ]
        [ a [ onClick (Go Home) ]
            [ text "Home" ]
        , a [ onClick (Go Music) ]
            [ text "Music" ]
        , a [ onClick (Go Shows) ]
            [ text "Shows" ]
        , a [ onClick (Go About) ]
            [ text "About" ]
        , a [ onClick (Go Contact) ]
            [ text "Contact" ]
        ]
