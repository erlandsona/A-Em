module Caldwell.Update exposing (update)

-- Libraries

import Navigation as Nav
import String exposing (toLower)


-- Source

import Caldwell.Types.UI exposing (Msg(..), Page(..))
import Caldwell.Model exposing (Model)


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
            , Cmd.none
            )

        ToggleNav bool ->
            ( { model | navOpen = not bool }
            , Cmd.none
            )
