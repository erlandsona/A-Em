module Caldwell.View exposing (view)

-- Libraries

import Debug exposing (log)
import Html exposing (Html)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Maybe exposing (withDefault)


-- Source

import Caldwell.Helpers exposing (toggle, container)
import Caldwell.Model exposing (Model)
import Caldwell.UI.Header as Header
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main
import Caldwell.Types.UI exposing (Msg, Nav(..), Page(..))


view : Model -> Html Msg
view { navbar, history } =
    container
        [ onClick (toggle navbar)
        , class
            (if navbar == Open then
                "Nav"
             else
                ""
            )
        ]
        [ Header.view navbar
        , Nav.view navbar
        , Main.view <| withDefault Home (List.head history)
        ]

