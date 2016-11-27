module Caldwell.View exposing (view)

-- Libraries

import Html exposing (Html)
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
view { navOpen, history } =
    container
        [ onClick (ToggleNav True)
        , class <| if navOpen then "Nav" else ""
        ]
        [ Nav.view navOpen
        , Main.view navOpen <| withDefault Home (List.head history)
        ]

