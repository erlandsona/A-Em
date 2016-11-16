module Caldwell.View exposing (view)

-- Libraries

import Html exposing (..)
import Html.Attributes exposing (class, id, href, attribute, target, alt, src)
import Html.Events exposing (onClick, on)
import Json.Decode as JSON


view : Bool -> Html Bool
view model =
    container
        [ onClick model
        , class
            (if model then
                "Nav"
             else
                ""
            )
        ]
        [ header [ onClick (not model) ]
            [ text "Caldwell" ]
        , nav [ onClick (not model) ]
            [ a [ href "#home" ]
                [ text "Home" ]
            , a [ href "#music" ]
                [ text "Music" ]
            , a [ href "#shows" ]
                [ text "Shows" ]
            , a [ href "#about" ]
                [ text "About" ]
            , a [ href "#contact" ]
                [ text "Contact" ]
            ]
        , main' [ onScroll False ]
            [ section [ id "home" ]
                [ h1 [] [ text "Home" ] ]
            , section [ id "music" ]
                [ h1 [] [ text "Music" ] ]
            , section [ id "shows" ]
                [ h1 [] [ text "Shows" ] ]
            , section [ id "about" ]
                [ h1 [] [ text "About" ]
                , p []
                    [ text "Stuff and things"
                    ]
                ]
            , section [ id "contact" ]
                [ h1 [] [ text "Contact" ] ]
            ]
        ]



-- Helper functions
onScroll : msg -> Attribute msg
onScroll message =
  on "scroll" (JSON.succeed message)

-- Custom Elements


container : List (Html.Attribute a) -> List (Html a) -> Html a
container =
    node "container"


drawer : List (Html a) -> Html a
drawer =
    node "drawer" []
