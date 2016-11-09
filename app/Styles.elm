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

type Classes =
    Container
  | SitePusher
  | HeaderLogo
  | Menu
  | SiteContent
  | Drawer
  | SiteCache

css : Stylesheet
css = stylesheet
  [ each [body, html]
      [ fontFamily cursive
      , fontFamilies [ "League Script" ]
      , fontSize (em 1)
      , lineHeight (pct 140)
      , height (pct 100)
      , margin zero
      , padding zero
      ]
  , each [ container, drawer ]
      [ display block ]
  , container
      [ height (vh 100)
      , width (vw 100)
      ]
  , a
      [ textDecoration none
      , color inherit
      ]
  , (.) Container
      [ overflow hidden
      , margin2 (px 0) (px 20)
      ]
  , (.) SiteContent [ paddingTop (px 66) ]
  , header
      [ position fixed
      , left zero
      , right zero
      , height (px 66)
      , lineHeight (px 66)
      , color white
      , backgroundColor transparent
      ]
  , (.) HeaderLogo
      [ padding2 zero (pt 25)
      ]
  , each [ drawer, container ]
      [ height (pct 100) ]
  , container
      [ before blackOverlay
      , prop "background" "url(assets/images/stairs-crop.jpg) center 27% no-repeat"
      , prop "background-size" "cover"
      -- , displayFlex
      -- , flexWrap wrap
      -- , alignItems baseline
      -- , height (vh 100)
      -- , width  (vw 100)
      -- , margin (px 0)
      , overflow hidden
      , children
          [ everything
              [ color white
              -- , prop "z-index" "1"
              ]
          ]
      , descendants
          [ a
              [-- margin (pct 2)
                fontFamily cursive
              , fontFamilies ["Megrim"]
              , fontSize (Css.rem 2)
              ]
          ]
      ]
  , drawer
      [ prop "transition-duration" "0.3s"
      , transform (translateX (px 0))
      ]
  , (.) SiteContent
      [ position absolute
      , top (px 66)
      , right zero
      , left zero
      , bottom zero
      , paddingTop zero
      , overflowY scroll
      , prop "-webkit-overflow-scrolling" "touch"
      ]
  , header
      [ position static ]
  , (.) Menu
      [ position absolute
      , left zero
      , top zero
      , bottom zero
      , backgroundColor darkFade
      , width (px menuWidth)
      , transform (translateX (px (menuWidth * -1)))
      , descendants
          [ a
              [ display block
              , height (px 40)
              , textAlign center
              , lineHeight (px 40)
              ]
          ]
      ]
  , (.) Drawer
      [ descendants
          [ drawer
              [ transform (translateX (px menuWidth))
              ]
          , (.) SiteCache
              [ position absolute
              , top zero
              , left zero
              , right zero
              , bottom zero
              , backgroundColor darkFade
              ]
          ]
      ]
  ]


-- Implementation Details

menuWidth : Float
menuWidth = 250

blackOverlay : List Mixin
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



prop : String -> String -> Mixin
prop = property

container : List Mixin -> Snippet
container = selector "container"

drawer : List Mixin -> Snippet
drawer = selector "drawer"
