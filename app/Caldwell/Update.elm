module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Navigation as Nav
import String exposing (toLower)
import UrlParser as Url


-- Source

import Caldwell.Types.UI exposing (Msg(..), Page(..))
import Caldwell.Model exposing (Model)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        SetUrl Home ->
            ( model
            , Nav.newUrl "/"
            )

        SetUrl url ->
            ( model
            , Nav.newUrl (toLower <| toString url)
            )

        GoToUrl page ->
            ( { model | history = (page :: model.history) }
            , Cmd.none
            )


        ToggleNav bool ->
            ( { model | navOpen = log "nav" (not bool) }
            , Cmd.none
            )
