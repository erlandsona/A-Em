module Caldwell.Styles exposing (css)

-- Libs

import Css exposing (..)
import Css.Elements exposing (..)


-- Src

import Colors exposing (..)


-- stylesheet : List Snippet -> Stylesheet
-- stylesheet snippets =
--     { charset = Nothing
--     , imports = []
--     , namespaces = []
--     , snippets = snippets
--     }


type Classes
    = Nav


css : Stylesheet
css =
    stylesheet
        [ each [ body, html ]
            [ fontFamily cursive
            , fontFamilies [ "League Script" ]
            , fontSize (pct 100)
            , height (vh 100)
            ]
        , body
            [ before blackOverlay
            , prop "background" "url(assets/images/stairs-crop.jpg) center 27% no-repeat"
            , prop "background-size" "cover"
            , color white
            ]
        , container
            [ position relative
            , display block
            , height (vh 100)
            , width (vw 100)
            , overflow hidden
            ]
        , header
            [ prop "user-select" "none"
            , fontFamily cursive
            , cursor pointer
            , fontFamilies [ "Megrim" ]
            , fontSize (Css.rem 3)
            ]
        , nav
            [ displayFlex
            , flexDirection column
            , prop "justify-content" "center"
            , prop "transition" "0.3s"
            , position absolute
            , top (vh 50)
            , bottom (vh 50)
            , backgroundColor transparent
            , prop "transform" "translateX(calc(-101% - 3vw))"
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
        , a
            [ textDecoration none
            , color inherit
            ]
        , (.) Nav
            [ children
                [ nav
                    [ transform (translateX (px 0))
                    ]
                ]
            ]
        ]



-- Implementation Details


menuWidth : Float
menuWidth =
    250


blackOverlay : List Mixin
blackOverlay =
    [ backgroundColor black
    , height (pct 100)
    , width (pct 100)
    , opacity (num 0.7)
    , display block
    , position absolute
    , prop "z-index" "0"
    , prop "content" "''"
    ]


prop : String -> String -> Mixin
prop =
    property


container : List Mixin -> Snippet
container =
    selector "container"


drawer : List Mixin -> Snippet
drawer =
    selector "drawer"
