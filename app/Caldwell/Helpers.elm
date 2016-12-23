module Caldwell.Helpers exposing (..)

import Css exposing (Mixin, property)
import Html exposing (node, Html, Attribute)
import Html.Events exposing (onWithOptions, Options)
import Json.Decode exposing (succeed)
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



-- View Helpers

clickWithStopProp : Msg -> Attribute Msg
clickWithStopProp msg =
    onWithOptions "click" (Options True     False) (succeed msg)
                        -- Options stopProp prevDefault



-- Css Helpers


prop : String -> String -> Mixin
prop =
    property
