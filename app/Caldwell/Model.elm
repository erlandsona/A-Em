module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Maybe exposing (withDefault)
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
        ( model, Cmd.none )


parsePage : Location -> Page
parsePage loc =
  withDefault Home (Url.parsePath urlParser loc)
