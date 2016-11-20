module Caldwell.Routes exposing (..)

-- Libraries

import UrlParser as Url exposing (top, oneOf)


-- Source

import Caldwell.Types.UI exposing (Page(..))



urlParser : Url.Parser (Page -> a) a
urlParser =
    oneOf
        [ Url.map Music top
        , Url.map Shows top
        , Url.map About top
        , Url.map Contact top
        ]
