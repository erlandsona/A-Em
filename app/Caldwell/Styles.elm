module Caldwell.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Helpers exposing (prop)
import Caldwell.UI.HeaderStyles as Header
import Caldwell.UI.MainStyles as Main
import Caldwell.UI.NavStyles as Nav
import Caldwell.Types.Styles exposing (..)
import Caldwell.Colors exposing (..)


-- stylesheet : List Snippet -> Stylesheet
-- stylesheet snippets =
--     { charset = Nothing
--     , imports = []
--     , namespaces = []
--     , snippets = snippets
--     }





css : Stylesheet
css =
    stylesheet
        [ each [ body, html ]
            [ fontFamily cursive
            , fontFamilies [ "League Script" ]
            , fontSize (pct 100)
            , height (vh 100)
            ]
        , html
            [ backgroundColor black ]
        , selector "*::-webkit-scrollbar"
            [ width (em 0.7)
            -- , display none
            ]
        , selector "*::-webkit-scrollbar-track"
            [ prop "box-shadow" "inset 5px 0 0 0 black, inset -5px 0 0 0 black, inset 0 5px 0 0 black, inset 0 -5px 0 0 black"
            , backgroundColor white
            ]

        , selector "*::-webkit-scrollbar-thumb"
            [ prop "background-color" "white"
            , borderRadius (em 1)
            ]

        , body
            [ before blackOverlay
            , prop "background" "url(assets/images/stairs-crop.jpg) center 27% no-repeat"
            , prop "background-size" "cover"
            , color white
            ]
        , a
            [ textDecoration none
            , color inherit
            ]
        , container
            [ position relative
            , display block
            , height (vh 100)
            , width (vw 100)
            , overflow hidden
            ]
        , (.) Nav
            [ children
                [ nav
                    [ transform (translateX (px 0))
                    ]
                ]
            ]
        , Header.css
        , Nav.css
        , Main.css
        ]



-- Helpers

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


container : List Mixin -> Snippet
container =
    selector "container"
