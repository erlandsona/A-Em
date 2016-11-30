module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Navigation as Nav
import String exposing (toLower)
import Task


-- Source

import Caldwell.Model exposing (Model)
import Caldwell.Ports exposing (easeIntoView)
import Caldwell.Types.UI exposing (Msg(..), Page(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetUrl url ->
            ( model
            , Nav.newUrl <|
                case url of
                    Home -> "/"
                    _ -> toLower <| toString url
            )

        GoToUrl page ->
            ( { model | history = (page :: model.history) }
            , log "scroll" <| easeIntoView (toString page)
            )

        ToggleNav bool ->
            ( { model | navOpen = not bool }
            , Cmd.none
            )
