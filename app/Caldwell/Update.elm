module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Navigation as Nav
import UrlParser as Url


-- Source

import Caldwell.Types.UI exposing (Msg(..))
import Caldwell.Model exposing (Model)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case log "message" msg of
        SetUrl url ->
            ( log "page" model
            , Nav.newUrl url
            )

        GoToUrl page ->
            ( { model | history = (page :: model.history) }
            , Cmd.none
            )


        Toggle nav ->
            ( { model | navbar = nav }
            , Cmd.none
            )
