module Caldwell.Header.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (header)
import String exposing (trim, dropRight)


-- Source

import Caldwell.Helpers exposing (prop)
import Caldwell.Constants
    exposing
        ( deviceBar
        , gutterSize
        , titleHeight
        )


css : List Snippet
css =
    [ header
        [ prop "user-select" "none"
        , fontFamily cursive
        , fontFamilies [ "Megrim" ]
        , fontSize (pct 330)
        , cursor pointer
        , position fixed
        , right zero
          -- plus padding ends up being 68px
        -- , width (pct 100)
        , textAlign right
        , padding (Css.rem gutterSize)
        , textShadowList 7 7
          -- adjust for fontness
          -- , paddingTop (px deviceBar)
        , prop "z-index" "1"
        ]
    ]


textShadowList : Int -> Float -> Mixin
textShadowList multiplier thickness =
    let
        ratio = 3

        forgroundShadowValues =
            List.map (\blur -> "0px 0px " ++ (toString blur) ++ "px white, ") <|
            List.map ((*) (multiplier // 2)) (List.range 1 <| Basics.round <| logBase ratio thickness)

        backgroundShadowValues =
            List.map (\blur -> "0px 0px " ++ (toString blur) ++ "px black, ") <|
            List.map ((*) multiplier) (List.range 1 <| Basics.round thickness)

        textShadowValue =
            ((String.concat forgroundShadowValues) |> trim)
          ++ (String.concat backgroundShadowValues |> dropComma)

        dropComma = trim >> dropRight 1
    in
        prop "text-shadow" textShadowValue
