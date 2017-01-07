module Caldwell.Update exposing (update)

-- Libraries
-- import Debug exposing (log)

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
            GoToPage location ->
                ( { model | history = (parse location) :: history }
                , easeIntoView (toString <| parse location)
                )

            SetUrl url ->
                ( model
                , Nav.newUrl <|
                    if url == Home then "/"
                    else url |> toString |> toLower
                )

            Todays newDate ->
                ( { model | date = newDate }
                , Cmd.none
                )

            Toggle newState ->
                ( { model | nav = newState }
                , Cmd.none
                )



-- updateProp : Msg -> Model -> (Model, Cmd Msg)
-- updateProp {prop} model =
--     ( { model | prop = prop }
--     , Cmd.none
--     )
