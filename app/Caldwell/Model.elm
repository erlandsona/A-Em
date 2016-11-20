module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Navigation exposing (Location)
import UrlParser as Url

-- Source
import Caldwell.Types.UI exposing (Msg, Nav(..), Page(..))
import Caldwell.Routes exposing (parsePage)


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

