module Caldwell.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Constants exposing (..)
import Caldwell.Helpers exposing (prop)
import Caldwell.UI.MainStyles as Main
import Caldwell.UI.NavStyles as Nav
import Caldwell.Types exposing (Classes(..))


css : Stylesheet
css =
    stylesheet
        [ html
            [ height (pct 100)
            , backgroundColor black
            ]
        , body
            [ color white
            ]
        , each [ body, html ]
            [ fontFamily sansSerif
            , fontFamilies [ "Josefin Sans" ]
            , fontSize (pct 100)
            , fontWeight (int 300)
            ]
        , each
            [ h1, h2, h3, h4, h5, h6 ]
            [ fontSize (pct 200)
            , fontWeight inherit
            ]
        , p [ fontSize (pct 115) ]
        , a
            [ textDecoration none
            , color inherit
            ]
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
        , selector container
            [ display block
            , children
                [ selector caldwellBackground
                    [ backgroundColor black
                    , prop "background" "url(assets/images/stairs.jpg) center 27% no-repeat"
                    , prop "background-size" "cover"
                    , height (vh 100)
                    , width (vw 100)
                    , display block
                    , position fixed
                    , prop "z-index" "0"
                    , prop "content" "''"
                    ]
                , selector blackOverlay
                    [ backgroundColor black
                    , height (vh 100)
                    , width (vw 100)
                    , opacity (num 0.7)
                    , display block
                    , position fixed
                    , prop "z-index" "0"
                    , prop "content" "''"
                    ]
                ]
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
