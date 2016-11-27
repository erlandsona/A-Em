module Caldwell.UI.NavStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)
import Caldwell.Helpers exposing (prop)


css : Snippet
css =
    nav
        [ displayFlex
        , flexDirection column
        , prop "justify-content" "center"
        , prop "transition" "0.3s"
        , position fixed
        , top (vh 50)
        , prop "padding-left" "calc(1rem - 1px)" -- adjust for fontness
        , bottom (vh 50)
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
                , padding3 (vh 7) zero zero
                , prop "white-space" "nowrap"
                , textAlign right
                , fontSize (pct 175)
                , fontFamily sansSerif
                , fontFamilies [ "Megrim" ]
                , hover
                    [ borderBottom2 (px 1) solid
                    , width (pct 100)
                    ]
                ]
            ]
        ]
