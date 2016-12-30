module Caldwell.Model exposing (init, Model)

-- Libraries
import Date exposing (Date)
import Maybe exposing (withDefault)
import Navigation exposing (Location)
import Task
import Time exposing (Time)
import UrlParser as Url

-- Source
import Caldwell.Helpers exposing (urlParser)
import Caldwell.Ports exposing (snapIntoView)
import Caldwell.Types exposing (Msg(..), Page(..))


-- MODEL

type alias Model =
    { browserHistory : List Page
    , navOpen  : String
    , date : Date
    }


init : Time -> Location -> ( Model, Cmd Msg )
init now location =
    let
        model =
            { browserHistory = [ parsePage location ]
            , navOpen  = ""
            , date = Date.fromTime now
            }
    in
        ( model
        , snapIntoView (toString <| parsePage location)
        )


parsePage : Location -> Page
parsePage location =
    withDefault Home (Url.parsePath urlParser location)
