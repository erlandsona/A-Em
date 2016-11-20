module Caldwell.View exposing (view)

-- Libraries

import Debug exposing (log)
import Html exposing (..)
import Html.Attributes exposing (class, id, style, href, attribute, target, alt, src)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Helpers exposing (toggle, container)
import Caldwell.Model exposing (Model)
import Caldwell.UI.Header as Header
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main
import Caldwell.Types.UI exposing (Msg, Nav(..))


view : Model -> Html Msg
view { navbar, currentPage } =
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
        , Main.view currentPage
        ]
