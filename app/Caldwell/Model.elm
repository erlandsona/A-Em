module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Navigation exposing (Location)
import UrlParser as Url

-- Source
import Caldwell.Types.UI exposing (Msg, Nav(..), Page(..))
import Caldwell.Helpers exposing (urlParser)


-- MODEL

type alias Model =
    { history : List Page
    , navbar : Nav
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            { history = [ parsePage location ]
            , navbar = Closed
            }
    in
        ( log "init model" model, Cmd.none )


parsePage : Location -> Page
parsePage loc =
  let
      page = Url.parsePath urlParser loc

  in
      case page of
        Just a -> a
        _ -> Home

