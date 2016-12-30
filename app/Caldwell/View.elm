module Caldwell.View exposing (view)

-- Libraries

import Html exposing (Html, Attribute, node)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Constants
    exposing
        ( blackOverlay
        , caldwellBackground
        , container
        )
import Caldwell.Model exposing (Model)
import Caldwell.UI.Header as Header
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main
import Caldwell.Types exposing (Msg(..), Page(..))


view : Model -> Html Msg
view model =
    node container
        [ onClick (ToggleNav True)
        , class <|
            if model.navOpen then
                "Nav"
            else
                ""
        ]
        [ node caldwellBackground [] []
        , node blackOverlay [] []
        , Header.view model.navOpen
        , Nav.view model.navOpen
        , Main.view model.date
        ]
