module View exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A

main : Html a
main =
  container []
    [ section [] []
    , section []
      [ text "Top Right - NavBar" ]
    , section []
      [ text "Bottom Left - Bio?" ]
    , section []
      [ text "Bottom Right - Social" ]
    ]


container = node "container"
