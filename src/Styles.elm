module Styles exposing (css)

-- Libs
import Css exposing (..)
import Css.Elements exposing (body)

-- Src
import Colors exposing (..)


css : Stylesheet
css = stylesheet
  [ body
    [ before blackOverlay
    , backgroundColor black
    ]
  ]

blackOverlay =
  [ backgroundColor black
  , height (100|>vh)
  , width  (100|>vw)
  , position absolute
  , opacity (num 0.7)
  ]
