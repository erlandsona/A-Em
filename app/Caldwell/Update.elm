module Caldwell.Update exposing (update)

-- Libraries

import Navigation as Nav
import String exposing (toLower)
import UrlParser as Url


-- Source

import Caldwell.Types.UI exposing (Msg(..))
import Caldwell.Model exposing (Model)

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        SetUrl url ->
            ( model
            , Nav.newUrl (toLower <| toString url)
            )

        GoToUrl page ->
            ( { model | history = (page :: model.history) }
            , Cmd.none
            )


        Toggle nav ->
            ( { model | navbar = nav }
            , Cmd.none
            )
