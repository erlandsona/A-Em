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

main : Model -> Html msg
main = beginnerProgram
    { model = False
    , view = view
    , update = update
    }

view =
  div [ class "SiteContainer" ]
    [ div [ class "SitePusher" ]
      [ header [ class "Header" ]
        [ a [ onClick True, class "HeaderLogo", href "#", id "HeaderIcon" ]
          [ text "Caldwell" ]
        , nav [ class "Menu" ]
          [ a [ href "#" ]
            [ text "Music" ]
          , a [ href "#" ]
            [ text "Shows" ]
          , a [ href "#" ]
            [ text "Bio" ]
          , a [ href "#" ]
            [ text "Contact" ]
          ]
        ]
      , div [ class "SiteContent" ]
        [ div [ class "Container" ]
          [ h1 []
            [ text "Responsive Navigation Bar" ]
          , p []
            [ text "Tutorial by Grafikart.fr           "
            , a [ href "https://www.youtube.com/watch?v=_X2N_yw9Boo", attribute "style" "color: blue", target "_blank" ]
              [ text "https://www.youtube.com/watch?v=_X2N_yw9Boo" ]
            ]
          ]
        ]
      , div [ class "SiteCache", id "SiteCache" ] []
      ]
    ]

update msg drawerState = (not drawerState)

-- $(document).ready(function(){

-- 	(function($) {

-- 		$('#header__icon').click(function(e){
-- 			e.preventDefault();
-- 			$('body').toggleClass('with--sidebar');
-- 		});

--     $('#site-cache').click(function(e){
--       $('body').removeClass('with--sidebar');
--     });

-- 	})(jQuery);

-- });



-- Custom Elements

container : List (Html a) -> Html a
container = node "container" []

drawer : List (Html a) -> Html a
drawer = node "drawer" []
