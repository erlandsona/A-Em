module Main exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A

import Styles


main : Html a
main =
  main' []
    [ h1 [] [ text "A&Em" ]
    , text "Stuff and things"
    ]
