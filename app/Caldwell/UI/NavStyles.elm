module Caldwell.UI.NavStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)
import Caldwell.Helpers exposing (prop)


-- Source

import Caldwell.Constants exposing (sideGutter)
import Caldwell.Types exposing (Classes(..))


css : List Snippet
css =
    [ nav
        [ displayFlex
        , flexDirection column
        , prop "justify-content" "space-around"
        , prop "transition" "0.3s"
        , position fixed
        , height (vh 100)
        , padding2 (vh 25) zero
        , backgroundColor transparent
        , prop "transform" "translateX(calc(-101% - 3vw))"
        , prop "z-index" "1"
        , children
            [ a
                [ cursor pointer
                , display inlineBlock
                , textDecoration none
                , borderBottom3 (px 1) solid transparent
                , prop "transition" "0.7s"
                , width (pct 0)
                , prop "white-space" "nowrap"
                , textAlign right
                , fontSize (pct 175)
                , fontFamily sansSerif
                , fontFamilies [ "Megrim" ]
                , hover
                    [ borderBottom2 (px 1) solid
                    , width (pct 100)
                    ]
                , children
                    [ span
                        [ marginLeft (Css.rem sideGutter) ]
                    ]
                ]
            ]
        ]
    , (.) Nav
        [ children
            [ nav
                [ transform <| translateX (px 0) ]
            ]
        ]
    ]
