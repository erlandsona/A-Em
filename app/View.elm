module View exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A

main : Html a
main =
  container []
    [ section []
      [ text "A&Em" ]
    , section []
      [ text "Top Right - NavBar" ]
    , section []
      [ text "Bottom Right - Social" ]
    , section []
      [ text "Bottom Left - Bio?" ]
    ]


container = node "container"
