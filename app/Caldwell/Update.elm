module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Dom.Scroll as Scroll
import Navigation as Nav
import String exposing (toLower)
import Task


-- Source

import Caldwell.Types.UI exposing (Msg(..), Page(..))
import Caldwell.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp -> (model, Cmd.none)

        SetUrl url ->
            ( model
            , Nav.newUrl <|
                case url of
                    Home -> "/"
                    _ -> toLower <| toString url
            )

        GoToUrl page ->
            ( { model | history = (page :: model.history) }
            , Task.attempt (\_ -> NoOp) <| log "scroll" <| Scroll.easeIntoView (toString page)
            )

        ToggleNav bool ->
            ( { model | navOpen = not bool }
            , Cmd.none
            )
