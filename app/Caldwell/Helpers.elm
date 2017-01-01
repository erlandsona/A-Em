module Caldwell.Helpers exposing (..)

import Css exposing (Mixin, property)
import Html exposing (node, Html, Attribute)
import Html.Events exposing (onWithOptions, Options)
import Json.Decode exposing (succeed)
import Maybe exposing (withDefault)
import Navigation exposing (Location)
import String exposing (trim, dropRight)
import UrlParser as Url exposing (top, oneOf, s)


-- Source

import Caldwell.Types exposing (..)


-- Route Helpers


urlParser : Url.Parser (Page -> a) a
urlParser =
    oneOf
        [ Url.map Music (s "music")
        , Url.map Shows (s "shows")
        , Url.map About (s "about")
        , Url.map Contact (s "contact")
        ]


parse : Location -> Page
parse location =
    withDefault Home (Url.parsePath urlParser location)

-- View Helpers

clickWithStopProp : Msg -> Attribute Msg
clickWithStopProp msg =
    onWithOptions "click" (Options True     False) (succeed msg)
                        -- Options stopProp prevDefault



-- Css Helpers


prop : String -> String -> Mixin
prop =
    property


shadowList : Int -> Float -> String
shadowList multiplier thickness =
    let
        ratio = 3

        forgroundShadowValues =
            List.map (\blur -> "0px 0px " ++ (toString blur) ++ "px white, ") <|
            List.map ((*) (multiplier // 2)) (List.range 1 <| Basics.round <| logBase ratio thickness)

        backgroundShadowValues =
            List.map (\blur -> "0px 0px " ++ (toString blur) ++ "px black, ") <|
            List.map ((*) multiplier) (List.range 1 <| Basics.round thickness)

        dropComma = trim >> dropRight 1
    in
          ((String.concat forgroundShadowValues) |> trim)
        ++ (String.concat backgroundShadowValues |> dropComma)
