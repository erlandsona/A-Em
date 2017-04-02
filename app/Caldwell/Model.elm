module Caldwell.Model exposing (init, Model)

-- Libraries
import Date exposing (Date)
import Navigation exposing (Location)
import Time exposing (Time)

-- Source
import Caldwell.Helpers exposing (parse)
import Caldwell.Ports exposing (snapIntoView)
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))


-- MODEL

type alias Model =
    { history : List Page
    , nav : Nav
    , date : Date
    }


init : Time -> Location -> ( Model, Cmd Msg )
init now location =
    let
        model =
            { history = [ parse location ]
            , nav = Closed
            , date = Date.fromTime now
            }
    in
        ( model
        , snapIntoView (toString <| parse location)
        )

