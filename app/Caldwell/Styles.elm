module Caldwell.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Helpers exposing (prop)
import Caldwell.UI.MainStyles as Main
import Caldwell.UI.NavStyles as Nav
import Caldwell.Types.Styles exposing (..)
import Caldwell.Constants exposing (..)


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
            [ fontFamily sansSerif
            , fontFamilies [ "Josefin Sans" ]
            , fontSize (pct 100)
            , fontWeight (int 300)
            ]
        , html
            [ backgroundColor black ]

        -- , selector "::-webkit-scrollbar"
        --     [ width (em 0.6)
        --     ]
        -- , selector "::-webkit-scrollbar-track"
        --     [ prop "box-shadow" "inset 4px 0 0 0 black, inset -4px 0 0 0 black, inset 0 5px 0 0 black, inset 0 -5px 0 0 black"
        --     , backgroundColor white
        --     ]

        -- , selector "::-webkit-scrollbar-thumb"
        --     [ prop "background-color" "white"
        --     , borderRadius (em 1)
        --     ]

        , body
            [ before blackOverlay
            , prop "background" "url(assets/images/stairs.jpg) center 27% no-repeat"
            , prop "background-size" "cover"
            , prop "background-attachment" "fixed"
            , position relative
            , color white
            , overflow hidden
            , height (vh 100)
            , width (vw 100)
            ]
        , each
            [h1, h2, h3, h4, h5, h6]
            [ fontSize (pct 200)
            , fontWeight inherit
            ]
        , p [ fontSize (pct 115) ]
        , a
            [ textDecoration none
            , color inherit
            ]
        , container
            [ display block
            ]
        , (.) Nav
            [ children
                [ nav
                    [ transform <| translateX (px 0) ]
                , main_
                    [ children
                        [ section
                            [ opacity (num 0.3) ]
                        ]
                    ]
                ]
            ]
        , Nav.css
        , Main.css
        ]



-- Helpers

blackOverlay : List Mixin
blackOverlay =
    [ backgroundColor black
    , height (vh 100)
    , width (vw 100)
    , opacity (num 0.7)
    , display block
    , position absolute
    , prop "z-index" "0"
    , prop "content" "''"
    ]


container : List Mixin -> Snippet
container =
    selector "container"
