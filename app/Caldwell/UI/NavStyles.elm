module Caldwell.UI.NavStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)
import Caldwell.Helpers exposing (prop)


-- Source

import Caldwell.Constants exposing (sideGutter)
import Caldwell.Types exposing (HtmlClass(..), Nav(..))


css : List Snippet
css =
    [ nav
        [ displayFlex
        , flexDirection column
        , prop "justify-content" "space-around"
        , prop "transition" "0.3s"
        , position fixed
        , cursor pointer
        , height (vh 50)
        , margin2 (vh 25) zero
        , backgroundColor transparent
        , prop "transform" "translateX(calc(-101% - 3vw))"
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
                , textAlign right
                , fontSize (pct 175)
                , fontFamily sansSerif
                , fontFamilies [ "Megrim" ]
                , hover
                    [ borderBottom2 (px 1) solid
                    , width (pct 110)
                    ]
                , children
                    [ span
                        [ marginLeft (Css.rem sideGutter) ]
                    ]
                ]
            ]
        ]
    ]
