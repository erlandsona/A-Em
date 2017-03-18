module Caldwell.Header.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements
    exposing
        ( header
        , span
        )


-- Source

import Caldwell.Helpers exposing (prop)
import Caldwell.Constants
    exposing
        ( black
        , gutterSize
        , titleHeight
        )


css : List Snippet
css =
    [ header
        [ prop "user-select" "none"
        , fontFamily cursive
        , fontFamilies [ "Megrim" ]
        , fontSize titleHeight
        , cursor pointer
        , position fixed
        , right zero
          -- plus padding ends up being 68px
          -- , width (pct 100)
        , padding4 gutterSize gutterSize zero (Css.rem 0.5)
        , borderBottomLeftRadius (px 30)
        , backgroundColor (rgba 0 0 0 0.93)
        , prop "box-shadow" "0px 0px 7px black, 0px 0px 37px black, 0px 0px 57px black, 0px 0px 77px black"
        , prop "text-shadow" "0px 0px 7px white"
        , zIndex (int 1)
        , lineHeight (num 1.4)
        , children
            [ span
                [ fontFamilies [ "Monoton" ]
                , float left
                ]
            ]
        ]
    ]
