module Caldwell.UI.HeaderStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (header)
import Caldwell.Helpers exposing (prop)
import Caldwell.Constants
    exposing
        ( deviceBar
        , sideGutter
        , titleHeight
        )


css : List Snippet
css =
    [ header
        [ prop "user-select" "none"
        , fontFamily cursive
        , cursor pointer
        , display initial
        , position fixed
        , fontFamilies [ "Megrim" ]
        , fontSize (pct 305)
          -- plus padding ends up being 68px
        , height (px titleHeight)
        , prop "padding" ("calc(" ++ (toString sideGutter) ++ "rem - 2px)")
          -- adjust for fontness
        , paddingTop (px deviceBar)
        , prop "z-index" "1"
        ]
    ]
