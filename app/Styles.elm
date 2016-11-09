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
  | SiteContainer
  | SitePusher
  | Header
  | HeaderLogo
  | Menu
  | SiteContent
  | WithSidebar
  | SiteCache

type Ids =
    HeaderIcon

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
  , a
      [ textDecoration none
      , color inherit
      ]
  , (.) Container
      [ overflow hidden
      , margin2 (px 0) (px 20)
      ]
  , (.) SiteContent [ paddingTop (px 66) ]
  , (.) Header
      [ position fixed
      , left zero
      , right zero
      , height (px 66)
      , lineHeight (px 66)
      , color white
      , backgroundColor headerBackground
      ]
  , (.) HeaderLogo
      [ fontWeight (int 700)
      , padding2 zero (px 25)
      , float left
      ]
  , each [ (.) SitePusher, (.) SiteContainer ]
      [ height (pct 100) ]
  , (.) SiteContainer
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
  , (.) SitePusher
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
  , (.) Header
      [ position static ]
  , (.) Menu
      [ position absolute
      , left zero
      , top zero
      , bottom zero
      , backgroundColor (darken headerBackground)
      , width (px menuWidth)
      , transform (translateX (px (menuWidth * -1)))
      , descendants
          [ a
              [ display block
              , height (px 40)
              , textAlign center
              , lineHeight (px 40)
              , borderBottom3 (px 1) solid headerBackground
              ]
          ]
      ]
  , (.) WithSidebar
      [ descendants
          [ (.) SitePusher
              [ transform (translateX (px menuWidth))
              ]
          , (.) SiteCache
              [ position absolute
              , top zero
              , left zero
              , right zero
              , bottom zero
              , backgroundColor (rgba 0 0 0 0.6)
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
