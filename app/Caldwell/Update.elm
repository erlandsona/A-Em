module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Navigation as Nav
import String exposing (toLower)

-- Source

import Caldwell.Helpers exposing (parse)
import Caldwell.Model exposing (Model)
import Caldwell.Ports exposing (easeIntoView)
import Caldwell.Types exposing (Msg(..), Page(..), Nav(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  let
      { history } = model
  in
    case msg of
        GoToUrl location ->
            ( { model | history = (parse location) :: history }
            , easeIntoView (toString <| parse location)
            )

        SetUrl url ->
            ( model
            , Nav.newUrl <|
                case url of
                    Home ->
                        "/"

                    _ ->
                        toLower <| toString url
            )

        Todays date ->
            ( { model | date = date }
            , Cmd.none
            )

        Toggle nav ->
            ( { model | nav = log "nav" (not nav) }
            , Cmd.none
            )


not : Nav -> Nav
not navState =
  case navState of
    Open -> Closed
    Closed -> Open
