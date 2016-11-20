module Caldwell.View exposing (view)

-- Libraries

import Debug exposing (log)
import Html exposing (Html)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Maybe exposing (withDefault)


-- Source

import Caldwell.Helpers exposing (toggle, container)
import Caldwell.Model exposing (Model)
import Caldwell.UI.Header as Header
import Caldwell.UI.Nav as Nav
import Caldwell.UI.Main as Main
import Caldwell.Types.UI exposing (Msg, Nav(..), Page(..))


view : Model -> Html Msg
view { navbar, history } =
    container
        [ onClick (toggle navbar)
        , class
            (if navbar == Open then
                "Nav"
             else
                ""
            )
        ]
        [ Header.view navbar
        , Nav.view navbar
        , Main.view <| withDefault Home (List.head history)
        ]






-- -- VIEW


-- view : Model -> Html Msg
-- view model =
--   div []
--     [ h1 [] [ text "Links" ]
--     , ul [] (List.map viewLink [ "/", "/blog/", "/blog/42", "/blog/37", "/blog/?search=cats" ])
--     , h1 [] [ text "History" ]
--     , ul [] (List.map viewRoute model.history)
--     ]


-- viewLink : String -> Html Msg
-- viewLink url =
--   li [] [ button [ onClick (NewUrl url) ] [ text url ] ]


-- viewRoute : Maybe Page -> Html msg
-- viewRoute maybeRoute =
--   case maybeRoute of
--     Nothing ->
--       li [] [ text "Invalid URL"]

--     Just route ->
--       li [] [ code [] [ text (routeToString route) ] ]


-- routeToString : Page -> String
-- routeToString route =
--   case route of
--     Home ->
--       "home"

--     BlogList Nothing ->
--       "list all blog posts"

--     BlogList (Just search) ->
--       "search for " ++ Http.encodeUri search

--     BlogPost id ->
--       "show blog " ++ toString id
