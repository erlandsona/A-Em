module Caldwell.View exposing (html)

-- Libraries

import Html exposing (..)
import Html.Attributes exposing (class, id, href, attribute, target, alt, src)
import Html.Events exposing (onClick)


html : Bool -> Html Bool
html model =
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
        , nav [ onClick model ]
            [ a [ href "music" ]
                [ text "Music" ]
            , a [ href "shows" ]
                [ text "Shows" ]
            , a [ href "bio" ]
                [ text "Bio" ]
            , a [ href "contact" ]
                [ text "Contact" ]
            ]
        , main' []
            [ h1 [] [ text "Hey Y'all!" ]
            ]
        ]



-- Custom Elements


container : List (Html.Attribute a) -> List (Html a) -> Html a
container =
    node "container"


drawer : List (Html a) -> Html a
drawer =
    node "drawer" []
