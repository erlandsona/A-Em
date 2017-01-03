module Caldwell.View exposing (template)

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
import Caldwell.Header.View as Header
import Caldwell.Nav.View as Nav
import Caldwell.Main.View as Main

template : Model -> Html Msg
template model =
    let
        { nav } = model
    in
        node container
            [ onClick (Toggle Closed)
            ]
            [ Styles.css_ model
            , node caldwellBackground [] []
            , node blackOverlay [] []
            , Header.template
            , Nav.template nav
            , Main.template model
            ]
