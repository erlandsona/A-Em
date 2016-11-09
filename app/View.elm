module View exposing (main)

-- Libraries
import Html exposing (..)
import Html.App exposing (beginnerProgram)
import Html.Attributes exposing (class, id, href, attribute, target, alt, src)
import Html.Events exposing (onClick)


-- main : Html a
-- main = container
--   [ drawer
--     [ header []
--     [ a [ class "HeaderLogo", id "HeaderIcon" ] [ text  "caldwell" ]
--     , nav []
--       [ a [] [ text "Music" ]
--       , a [] [ text "Shows" ]
--       , a [] [ text "Bio" ]
--       , a [] [ text "Contact" ]
--       ]
--     ]
--     , main' []
--       [ div [ class "Container" ]
--         [ h1 [] [text "A&Em and Stuffs"]
--         , p []
--           [ text
--             """
--               A&Em and stuff and things and stuff and yah
--               know what more stuff because I love stuff and things
--               and all the types of stuff that you can get with
--               the things that you put your stuff into.
--             """
--           ]
--         ]
--       ]
--     , div [ class "SiteCache", id "SiteCache" ] []
--     ]
--   ]

main : Program Never
main = beginnerProgram
    { model = False
    , view = view
    , update = update
    }

view : Bool -> Html Bool
view model =
    container [ class (if model then "Drawer" else "") ] -- SiteContainer
        [ drawer -- SitePusher
            [ header []
                [ a [ onClick True ]
                    [ text "Caldwell" ]
                , nav [ onClick True, class "Menu" ]
                    [ a [ href "music" ]
                        [ text "Music" ]
                    , a [ href "shows" ]
                        [ text "Shows" ]
                    , a [ href "bio" ]
                        [ text "Bio" ]
                    , a [ href "contact" ]
                        [ text "Contact" ]
                    ]
                ]
            , main' []
                [ h1 [] [ text "Responsive Navigation Bar" ]
                ]
            , div [ onClick True, class "SiteCache", id "SiteCache" ] []
            ]
        ]

update msg drawerState = (not drawerState)

-- Custom Elements

container : List (Html.Attribute a) -> List (Html a) -> Html a
container = node "container"

drawer : List (Html a) -> Html a
drawer = node "drawer" []
