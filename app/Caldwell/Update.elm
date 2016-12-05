module Caldwell.Update exposing (update)

-- Libraries

import Navigation as Nav
import String exposing (toLower)
import Task


-- Source

import Caldwell.Model exposing (Model)
import Caldwell.Ports exposing (easeIntoView)
import Caldwell.Types exposing (Msg(..), Page(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GoToUrl page ->
            ( { model | browserHistory = (page :: model.browserHistory) }
            ,  easeIntoView (toString page)
            )

        SetUrl url ->
            ( model
            , Nav.newUrl <|
                case url of
                    Home -> "/"
                    _ -> toLower <| toString url
            )

        Todays date ->
          ( { model | date = date }
          , Cmd.none
          )

        ToggleNav bool ->
            ( { model | navOpen = not bool }
            , Cmd.none
            )
