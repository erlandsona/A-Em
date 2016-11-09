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
  | HeaderLogo
type Ids =
    HeaderIcon

css : Stylesheet
css = stylesheet
  [ body
      [ fontFamily cursive
      , fontFamilies [ "League Script" ]
      ]
  , (.) Container
      [ overflow hidden
      , margin2 (px 0) (px 20)
      ]
  , header
      [ position fixed
      , left zero
      , right zero
      , height (px 66)
      , backgroundColor headerBackground
      ]
  , (.) HeaderLogo
      [ fontWeight (int 700)
      , padding2 zero (px 25)
      , float left
      ]

  , container
      [ before blackOverlay
      , prop "background" "url(assets/images/stairs-crop.jpg) center 27% no-repeat"
      , prop "background-size" "cover"
      , displayFlex
      , flexWrap wrap
      , alignItems baseline
      , height (vh 100)
      , width  (vw 100)
      , margin (px 0)
      , overflow hidden
      , children
          [ everything
              [ color white
              , prop "z-index" "1"
              ]
          ]
      , descendants
          [ a
              [ margin (pct 2)
              , fontFamily cursive
              , fontFamilies ["Megrim"]
              , fontSize (Css.rem 2)
              ]
          ]
      ]
  , drawer
      [ height (vh 100)
      , prop "transition-duration" "0.3s"
      , transform (translateX (px 0))
      ]
  , main'
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
      [ position static
      ]
  , nav
      [ position absolute
      , left zero
      , top zero
      , bottom zero
      , backgroundColor (darken headerBackground)
      ]
  ]


-- Implementation Details

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


-- /* VARIABLES */
-- $header-bg: #3f51b5;
-- $menu-width: 250px !default;

-- /* BASE */
-- html,
-- body {
--   font-family: 'Roboto', sans-serif;
--   font-size: 1em;
--   line-height: 1.4;
--   height: 100%;
  
--   margin: 0;
--   padding: 0;
-- }

-- .container {
--   @include clearfix;
--   margin: 0 20px;
-- }

-- main {
--   padding-top: 66px;
-- }

-- /* HEADER */
-- header {
--   position: fixed;
--   left: 0;
--   right: 0;
--   height: 66px;
  
--   line-height: 66px;
--   color: #fff;
  
--   background-color: $header-bg;
-- }

-- .header__logo {
--   font-weight: 700;
--   padding: 0 25px;
--   float: left;
-- }

-- /* MENU */
-- // nav {
-- //   float: left;
  
-- //   a {
-- //     padding: 0 10px;
-- //   }
  
-- //   a:hover {
-- //     color: #c5cae9;
-- //   }
-- // }

-- drawer,
-- container {
--   height: 100%;
-- }

-- container {
--   overflow: hidden;
-- }

-- drawer {
--   @include transition-duration(0.3s);
--   @include transform(translateX(0px));
-- }

-- main {
--   position: absolute;
--   top: 66px;
--   right: 0;
--   left: 0;
--   bottom: 0;
--   padding-top: 0;
--   overflow-y: scroll;
--   -webkit-overflow-scrolling: touch;
-- }

-- header {
--   position: static;
-- }

-- nav {
--   position: absolute;
--   left: 0;
--   top: 0;
--   bottom: 0;
--   background-color: darken($header-bg, 5);
-- /*    overflow-y: scroll;
--   -webkit-overflow-scrolling: touch;*/

--   width: $menu-width;

--   @include transform(translateX($menu-width * -1));
--   a {
--     display: block;
--     height: 40px;

--     text-align: center;
--     line-height: 40px;

--     border-bottom: 1px solid $header-bg;
--   }

-- }

-- .with--sidebar {
--   drawer {
--     @include transform(translateX($menu-width));
--   }
--   .site-cache {
--     position: absolute;
--     top: 0;
--     left: 0;
--     right: 0;
--     bottom: 0;
--     background-color: rgba(0,0,0,0.6);
--   }
-- }
