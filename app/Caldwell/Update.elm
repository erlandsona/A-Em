module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)
import Navigation as Nav
import UrlParser as Url exposing ((</>), (<?>), s, int, stringParam, top)


-- Source

import Caldwell.Types.UI exposing (Msg(..))
import Caldwell.Model exposing (Model)


update : Msg -> Model -> Model
update msg model =
    case log "Stuff" msg of
        SetUrl url ->
            ( model
            , Nav.newUrl url
            )

        GoToUrl page ->
            ( { model | history = Url.parsePath urlParser page :: model.history }
            , Cmd.none
            )
            

        Toggle nav ->
            ( { model | navbar = nav }
            , Cmd.none
            )
