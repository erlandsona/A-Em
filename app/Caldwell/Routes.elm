module Caldwell.Routes exposing (..)

-- Libraries

import Navigation exposing (Location)
import UrlParser as Url exposing (top, oneOf)


-- Source

import Caldwell.Types.UI exposing (Page(..))



urlParser : Url.Parser (Page -> a) a
urlParser =
    oneOf
        [ Url.map Home top
        , Url.map Music top
        , Url.map Shows top
        , Url.map About top
        , Url.map Contact top
        ]

parsePage : Location -> Page
parsePage loc =
  let 
      page = Url.parsePath urlParser loc

  in
      case page of
        Just a -> a
        _ -> Home
