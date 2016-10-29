module Styles exposing (css)

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

css : Stylesheet
css = stylesheet
  [ container
    [ before blackOverlay
    , prop "background" "url(assets/images/stairs-crop.jpg) center 27% no-repeat"
    , prop "background-size" "cover"
    , displayFlex
    , flexWrap wrap
    , alignItems baseline
    , height (vh 100)
    , width  (vw 100)
    , margin (px 0)
    , children
      [ nav
        [ color white
        , prop "z-index" "1"
        , margin (pct 2)
        , children
          [ h1
            [ fontFamily cursive
            , fontFamilies ["Megrim"]
            , fontSize (Css.rem 2)
            ]
          ]
        ]
      ]
    ]
  , p
    [ fontFamily cursive
    , fontFamilies ["League Script"]]
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
