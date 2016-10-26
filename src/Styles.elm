module Styles exposing (css)

-- Libs
import Css exposing (..)
import Css.Elements exposing (body, main')

-- Src
import Colors exposing (..)


prop = property

css : Stylesheet
css = stylesheet
  [ body
    [ margin (px 0)
    , before blackOverlay
    , prop "background" "url(assets/images/stairs.jpg) center 37% no-repeat"
    , prop "background-size" "cover"
    , width  (vw 100)
    , height (vh 100)
    ]
  , main'
    [ margin (px 0)
    , position relative
    , color yellow
    ]
  ]







-- Hide Implementation Details

blackOverlay =
  [ backgroundColor black
  , height (pct 100)
  , width  (pct 100)
  , opacity (num 0.7)
  , display block
  , position absolute
  , prop "content" "''"
  ]
