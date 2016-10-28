module Styles exposing (css)

-- Libs
import Css exposing (..)
import Css.Elements exposing (..)

-- Src
import Colors exposing (..)


css : Stylesheet
css = stylesheet
  [ container
    [ before blackOverlay
    , prop "background" "url(assets/images/stairs.jpg) center 37% no-repeat"
    , prop "background-size" "cover"
    , displayFlex
    , flexWrap wrap
    , height (vh 100)
    , width  (vw 100)
    , margin (px 0)
    , children
      [ section
        [ width (pct 50) 
        , color white
        , prop "z-index" "1"
        , firstOfType
          [ prop "background" "url(assets/images/logo-white-fade.png) 10% 25% no-repeat"
          , prop "background-size" "50%"
          ]
        ]
      ]
    ]
  -- , main'
  --   [ margin (px 0)
  --   , position relative
  --   , color yellow
  --   ]
  ]







-- Implementation Details

blackOverlay =
  [ backgroundColor black
  , height (pct 100)
  , width  (pct 100)
  , opacity (num 0.7)
  , display block
  , position absolute
  , prop "z-index" "0"
  , prop "content" "''"
  ]


prop = property
container = selector "container"
