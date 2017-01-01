module Caldwell.Header.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (header)


-- Source

import Caldwell.Helpers exposing (prop)
import Caldwell.Constants
    exposing
        ( black
        , deviceBar
        , gutterSize
        , titleHeight
        )


css : List Snippet
css =
    [ header
        [ prop "user-select" "none"
        , fontFamily cursive
        , fontFamilies [ "Megrim" ]
        , fontSize (pct 330)
        , lineHeight (int 1)
        , cursor pointer
        , position fixed
        , right zero
          -- plus padding ends up being 68px
        -- , width (pct 100)
        , padding4 (Css.rem gutterSize) (Css.rem gutterSize) zero zero
        , borderBottomLeftRadius (px 20)
        , backgroundColor (rgba 0 0 0 0.87)
        , prop "box-shadow" "0px 0px 7px black, 0px 0px 107px black, 0px 0px 137px black, 0px 0px 177px black"
        , prop "text-shadow" "0px 0px 7px white"
        , prop "z-index" "1"
        ]
    ]

