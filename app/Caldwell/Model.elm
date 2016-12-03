module Caldwell.Model exposing (init, Model)

-- Libraries
import Date exposing (Date)
import Maybe exposing (withDefault)
import Navigation exposing (Location)
import Task
import UrlParser as Url

-- Source
import Caldwell.Helpers exposing (urlParser)
import Caldwell.Ports exposing (snapIntoView)
import Caldwell.Types.UI exposing (Msg(..), Page(..))


-- MODEL

type alias Model =
    { browserHistory : List Page
    , navOpen  : Bool
    , date : Date
    }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        model =
            { browserHistory = [ parsePage location ]
            , navOpen  = False
            , date = Date.fromTime 0
            }
    in
        model !
        [ Task.perform Todays Date.now
        , snapIntoView (toString <| parsePage location)
        ]


parsePage : Location -> Page
parsePage location =
    withDefault Home (Url.parsePath urlParser location)
