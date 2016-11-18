module Caldwell.View exposing (view)

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
        [ onClick navbar
        , class
            (if navbar == Open then
                "Nav"
             else
                ""
            )
        ]
        [ header [ onClick (not navbar) ]
            [ text "Caldwell" ]
        , nav [ onClick (not navbar) ]
            [ a [ href "#Home", onClick Home ]
                [ text "Home" ]
            , a [ href "#Music", onClick Music ]
                [ text "Music" ]
            , a [ href "#Shows", onClick Shows ]
                [ text "Shows" ]
            , a [ href "#About", onClick About ]
                [ text "About" ]
            , a [ href "#Contact", onClick Contact ]
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
        [ ( "transform", "translateY(" ++ translatify page ++ "00%)" )
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


not : Nav -> Nav
not nav =
    case nav of
        Open ->
            Closed

        Closed ->
            Open



-- Update


update : Message -> Model -> Model
update msg model =
    if msg.updateNav == Open then
        model
    else if msg.updateNav == Closed then
        { model | navbar = Open }
    else if msg.updatePage == Home then
        { model | currentPage = Home }
    else
        model

        -- Home ->
        --     { model | currentPage = Home }

        -- Music ->
        --     { model | currentPage = Music }

        -- Shows ->
        --     { model | currentPage = Shows }

        -- About ->
        --     { model | currentPage = About }

        -- Contact ->
        --     { model | currentPage = Contact }



-- MODEL


type alias Message =
    { updateNav : Nav
    , updatePage : Page
    }


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
    | Open


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
