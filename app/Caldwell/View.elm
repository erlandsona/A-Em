module Caldwell.View exposing (view, update, model, Model, Message(..))

-- Libraries

import Html exposing (..)
import Html.Attributes exposing (class, id, style, href, attribute, target, alt, src)
import Html.Events
    exposing
        ( onClick
        , on
        )


-- import Json.Decode as JSON


view : Model -> Html Message
view {navbar, currentPage} =
    container
        [ onClick (toggle navbar)
        , class
            (if navbar == Opened then
                "Nav"
             else
                ""
            )
        ]
        [ header [ onClick (toggle navbar) ]
            [ text "Caldwell" ]
        , nav [ onClick (toggle navbar) ]
            [ a [ onClick GoHome ]
                [ text "Home" ]
            , a [ onClick GoMusic ]
                [ text "Music" ]
            , a [ onClick GoShows ]
                [ text "Shows" ]
            , a [ onClick GoAbout ]
                [ text "About" ]
            , a [ onClick GoContact ]
                [ text "Contact" ]
            ]
        , main_ []
            [ section
                [ id "Home"
                , paginate currentPage
                ]
                [ h1 [] [ text "Home" ] ]
            , section
                [ id "Music"
                , paginate currentPage
                ]
                [ h1 [] [ text "Music" ] ]
            , section
                [ id "Shows"
                , paginate currentPage
                ]
                [ h1 [] [ text "Shows" ] ]
            , section
                [ id "About"
                , paginate currentPage
                ]
                [ h1 [] [ text "About" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                , p []
                    [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
                ]
            , section
                [ id "Contact"
                , paginate currentPage
                ]
                [ h1 [] [ text "Contact" ] ]
            ]
        ]


paginate : Page -> Attribute msg
paginate page =
    style
        [ ( "transform", "translateY(-" ++ translatify page ++ "00%)" )
        ]

translatify : Page -> String
translatify page =
    case page of
        Home ->
            "0"

        Music ->
            "1"

        Shows ->
            "2"

        About ->
            "3"

        Contact ->
            "4"


toggle : Nav -> Message
toggle nav =
    case nav of
        Opened ->
            Close

        Closed ->
            Open

identity : Nav -> Message
identity nav =
    case nav of
        Opened ->
            Open
        Closed ->
            Close


-- Update


update : Message -> Model -> Model
update msg model =
    case msg of
        Open ->
            log (toString msg)
            { model | navbar = Opened }

        Close ->
            log (toString msg)
            { model | navbar = Closed }

        GoHome ->
            log (toString msg)
            { model | currentPage = Home }

        GoMusic ->
            log (toString msg)
            { model | currentPage = Music }

        GoShows ->
            log (toString msg)
            { model | currentPage = Shows }

        GoAbout ->
            log (toString msg)
            { model | currentPage = About }

        GoContact ->
            log (toString msg)
            { model | currentPage = Contact }



-- MODEL


type Message
    = Close
    | Open
    | GoHome
    | GoMusic
    | GoShows
    | GoAbout
    | GoContact



type alias Model =
    { navbar : Nav
    , currentPage : Page
    }


model : Model
model =
    { navbar = Closed
    , currentPage = Home
    }


type Nav
    = Closed
    | Opened


type Page
    = Home
    | Music
    | Shows
    | About
    | Contact



-- Helper functions
-- onScroll : msg -> Attribute msg
-- onScroll message =
--     on "scroll" (JSON.succeed message)
-- Custom Elements


container : List (Html.Attribute a) -> List (Html a) -> Html a
container =
    node "container"


drawer : List (Html a) -> Html a
drawer =
    node "drawer" []
