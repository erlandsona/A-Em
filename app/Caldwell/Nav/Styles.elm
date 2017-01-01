module Caldwell.Nav.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Constants exposing (gutterSize)
import Caldwell.Helpers exposing (prop, shadowList)


css : List Snippet
css =
    [ nav
        [ displayFlex
        , flexDirection column
        , prop "justify-content" "space-around"
        , prop "align-items" "flex-end"
        , prop "transition" "0.3s"
        , position fixed
        , right zero
        , cursor pointer
        , height (vh 50)
        , margin2 (vh 25) zero
        , backgroundColor transparent
        , prop "transform" <| "translate3d(calc(100% + "++(toString gutterSize)++"rem), 0, 0)"
        , prop "z-index" "1"
        , children
            [ a
                [ cursor pointer
                , displayFlex
                , flexDirection column
                , flexGrow (int 1)
                , prop "justify-content" "flex-end"
                , textDecoration none
                , borderBottom3 (px 1) solid transparent
                , prop "transition" "0.25s"
                , width (pct 0)
                , prop "white-space" "nowrap"
                , textAlign left
                , prop "direction" "rtl"
                , prop "text-shadow" <| shadowList 7 7
                , fontSize (pct 175)
                , fontFamily sansSerif
                , fontFamilies [ "Megrim" ]
                , hover
                    [ borderBottom2 (px 1) solid
                    , width (pct 110)
                    ]
                , children
                    [ span
                        [ marginRight (Css.rem gutterSize) ]
                    ]
                ]
            ]
        ]
    ]
