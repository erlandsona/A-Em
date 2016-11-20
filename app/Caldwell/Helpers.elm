module Caldwell.Helpers exposing (..)

import Html exposing (node, Html, Attribute)
import Html.Attributes exposing (style)
import Css exposing (Mixin, property)


-- Source

import Caldwell.Types.UI exposing (..)


-- Custom Elements


container : List (Attribute a) -> List (Html a) -> Html a
container =
    node "container"


drawer : List (Html a) -> Html a
drawer =
    node "drawer" []



-- Event Handlers
-- onScroll : msg -> Attribute msg
-- onScroll message =
--     on "scroll" (JSON.succeed message)


toggle : Nav -> Msg
toggle nav =
    case nav of
        Open ->
            Toggle Closed

        Closed ->
            Toggle Open



-- View Helpers


paginate : Page -> Attribute msg
paginate page =
    style
        [ ( "transform", "translateY(-" ++ translatify page ++ "00%)" )
        ]


translatify : Page -> String
translatify page =
    case page of
        Music ->
            "1"

        Shows ->
            "2"

        About ->
            "3"

        Contact ->
            "4"

        _ ->
            "0"



-- Css Helpers


prop : String -> String -> Mixin
prop =
    property
