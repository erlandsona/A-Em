module Caldwell.Model exposing (init, Model)

-- Libraries
import Debug exposing (log)
import Dom.Scroll as Scroll
import Maybe exposing (withDefault)
import Navigation exposing (Location)
import Task
import UrlParser as Url

-- Source
import Caldwell.Types.UI exposing (Msg(..), Page(..))
import Caldwell.Helpers exposing (urlParser)


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
        , Task.attempt (\_ -> NoOp) <| log "scroll" <| Scroll.easeIntoView (toString <| parsePage location)
        )


parsePage : Location -> Page
parsePage loc =
  withDefault Home (Url.parsePath urlParser loc)
