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
        , position absolute
        , top (vh 50)
        , bottom (vh 50)
        , backgroundColor transparent
        , prop "transform" "translateX(calc(-101% - 3vw))"
        , prop "z-index" "1"
        , children
            [ a
                [ cursor pointer
                , display inlineBlock
                , textDecoration none
                , borderBottom3 (px 3) solid transparent
                , prop "transition" "0.7s"
                , width (pct 0)
                , padding4 (vh 7) zero zero (vw 3)
                , prop "white-space" "nowrap"
                , textAlign right
                , fontSize (pct 200)
                , hover
                    [ borderBottom2 (px 3) solid
                    , width (pct 100)
                    ]
                ]
            ]
        ]
