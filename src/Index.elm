module Index exposing (main)

-- Libraries
import Html exposing (..)
import Html.CssHelpers as A

-- Src
import Styles


-- HTML
main =
  main' []
    [ h1 [] [ text "A&Em" ]
    ]


fader = node "fader"