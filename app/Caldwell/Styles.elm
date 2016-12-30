module Caldwell.Styles exposing (css, css_)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)
import Html exposing (Html, node)
import String.Extra exposing (clean)


-- Source

import Caldwell.Constants exposing (..)
import Caldwell.Helpers exposing (prop)
import Caldwell.Types exposing (Nav(..))
import Caldwell.UI.HeaderStyles as Header
import Caldwell.UI.MainStyles as Main
import Caldwell.UI.NavStyles as Nav


css : Stylesheet
css =
    stylesheet <|
        List.concat
            [ [ html
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
                            , prop "background" "url(images/stairs.jpg) center 27% no-repeat"
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
              ]
            , Header.css
            , Nav.css
            , Main.css
            ]


css_ : Nav -> Html a
css_ navState =
    node "style" [] [ Html.text (clean (styles_ navState).css) ]


styles_ : Nav -> { css : String, warnings : List String }
styles_ navState = 
  let
      style_ =
          [ nav <|
              case navState of
                Open -> [ transform <| translateX (px 0) ]
                Closed -> []
          ]
  in
      compile [ stylesheet style_ ]
