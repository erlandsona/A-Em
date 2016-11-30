module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Maybe exposing (withDefault)
import Navigation exposing (Location)
import UrlParser as Url

-- Source
import Caldwell.Helpers exposing (urlParser)
import Caldwell.Ports exposing (easeIntoView)
import Caldwell.Types.UI exposing (Msg(..), Page(..))


-- MODEL

type alias Model =
    { history : List Page
    , navOpen  : Bool
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            { history = [ parsePage location ]
            , navOpen  = False
            }
    in
        ( model
        , log "scroll" <| easeIntoView (toString <| parsePage location)
        )


parsePage : Location -> Page
parsePage loc =
  withDefault Home (Url.parsePath urlParser loc)
