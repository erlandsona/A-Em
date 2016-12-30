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
import Caldwell.Styles as Styles
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))
import Caldwell.UI.Header as Header
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main

view : Model -> Html Msg
view model =
    let
        { nav } = model
    in
        node container
            [ onClick (Toggle Open)
            ]
            [ Styles.css_ nav
            , node caldwellBackground [] []
            , node blackOverlay [] []
            , Header.view nav
            , Nav.view nav
            , Main.view model
            ]
