module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Navigation exposing (Location)
import UrlParser as Url

-- Source
import Caldwell.Types.UI exposing (Msg, Nav(..), Page(..))
import Caldwell.Routes exposing (urlParser)


-- MODEL

type alias Model =
    { history : List (Maybe Page)
    , navbar : Nav
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            { history = [ Url.parsePath urlParser location ]
            , navbar = Closed
            }
    in
        ( model, Cmd.none )

