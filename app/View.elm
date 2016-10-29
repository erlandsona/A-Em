module View exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A


container = node "container"

main : Html a
main =
  container []
    [ nav []
      [ h1 [] [ text  "caldwell" ] ]
    ]
  -- Intersperse a list of Nav Actionables
  -- with content to be 3dTransformed in css.



