module Caldwell.Main.View exposing (template)

-- Libraries

import Date exposing (Month(..), Day(..), Date)

import FontAwesome.Brand as Social
import FontAwesome.Web as Icon

import Html exposing (..)


import Html.Attributes exposing (..)

import Html.CssHelpers exposing (withNamespace)
import String.Extra exposing (clean)


-- Source

import Caldwell.Bio.View as Bio
import Caldwell.Constants exposing (caldwellCalendar)
import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Model exposing (Model)
import Caldwell.Types exposing (..)


{ id, class } =
    withNamespace ""


type Venue = Venue String String String

template : Html Msg
template =
    main_ []
        [ section [ id Home ]
                -- , target "_blank"
                -- , target "_blank"
                -- , target "_blank"
                -- , target "_blank"
            [ a [ href ""] [ Social.facebook_square ]
            , a [ href ""] [ Social.twitter_square ]
            , a [ href ""] [ Social.instagram ]
            , a [ href ""] [ Icon.star ]
            ]
        , section [ id About ] Bio.template
        , section [ id Shows ]
            [ node caldwellCalendar
                []
                [ h2 [] [ text (toString Shows) ]
                , fadingHr
                , ul [ class [ Gigs ] ] <|
                    List.intersperse fadingHr <|
                    List.map (\(Venue a b c) ->
                        li [ class [ Gig ] ] <|
                            List.map (\string -> span [] [ text string ]) [a,b,c]
                        )
                    [ Venue "March 16th" "Belcourt Taps" "8:00pm"
                    , Venue "March 31st" "Tennessee Brew Works" "7:00pm"
                    , Venue "April 2nd"  "Natchez Hills Winery" "2:00pm"
                    , Venue "April 9th"  "Drifter's BBQ" "2:00pm"
                    , Venue "April 15th" "Belcourt Taps" "7:00pm"
                    ]
                ]
            ]
          , section [ id Music ]
              [ h2 [] [ text (toString Music) ]
              , fadingHr
              , iframe
                  [ seamless True
                  , src <| soundCloudiFrameBaseUrl ++ "276527707" ++ soundCloudiFrameParams
                  ] []
              , fadingHr
              , iframe
                  [ seamless True
                  , src <| soundCloudiFrameBaseUrl ++ "278360717" ++ soundCloudiFrameParams
                  ] []
              , fadingHr
              , iframe
                  [ seamless True
                  , src <| soundCloudiFrameBaseUrl ++ "192483435" ++ soundCloudiFrameParams
                  ] []
              ]
          , section [ id Contact ]
              [ h2 [] [ text (toString Contact) ]
              , fadingHr
              , a [ href "mailto:booking@caldwell.band" ] [ text "booking@caldwell.band" ]
              ]
        ]

soundCloudiFrameBaseUrl : String
soundCloudiFrameBaseUrl =
    "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/"

soundCloudiFrameParams : String
soundCloudiFrameParams =
    "&amp;color=000000&amp;auto_play=false&amp;hide_related=true&amp;liking=false&amp;show_artwork=false&amp;show_comments=false&amp;show_user=false&amp;show_reposts=false"

fadingHr : Html a
fadingHr =
    node "fading-hr" [] []
