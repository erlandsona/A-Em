module Caldwell.View exposing (view)

-- Libraries

import Html exposing (Html, node)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Maybe exposing (withDefault)


-- Source

import Caldwell.Helpers exposing (container)
import Caldwell.Model exposing (Model)
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main
import Caldwell.Types.UI exposing (Msg(..), Page(..))


view : Model -> Html Msg
view model =
    container
        [ onClick (ToggleNav True)
        , class <| if model.navOpen then "Nav" else ""
        ]
        [ caldwellBackground
        , blackOverlay
        , Nav.view model.navOpen
        , Main.view model
        ]

blackOverlay : Html a
blackOverlay = node "black-overlay" [] []

caldwellBackground : Html a
caldwellBackground = node "caldwell-background" [] []
