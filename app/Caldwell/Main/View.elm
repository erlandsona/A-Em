module Caldwell.Main.View exposing (template)

-- Libraries

import FontAwesome.Brand as Social
import FontAwesome.Web as Icon

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.CssHelpers exposing (withNamespace)


-- Source

import Caldwell.Bio.View as Bio
import Caldwell.Constants exposing (caldwellCalendar)
import Caldwell.Types exposing (..)


{ id, class } =
    withNamespace ""

type alias Date = String
type alias Place = String
type alias Time = String

type Venue
    = Venue Date Place Time


template : Html Msg
template =
    main_ []
        [ section [ id Home ]
            [ a
                [ href "https://www.facebook.com/Caldwellband/"
                , target "_blank"
                , rel "noopener"
                ]
                [ Social.facebook_square ]
            , a
                [ href "https://twitter.com/caldwell_band"
                , target "_blank"
                , rel "noopener"
                ]
                [ Social.twitter_square ]
            , a
                [ href "https://www.instagram.com/caldwell_band/"
                , target "_blank"
                , rel "noopener"
                ]
                [ Social.instagram ]
            , a
                [ href "https://www.reverbnation.com/caldwellband"
                , target "_blank"
                , rel "noopener"
                ]
                [ Icon.star ]
            ]
        , section [ id About ] Bio.template
        , section [ id Shows ]
            [ node caldwellCalendar
                []
                [ h2 [] [ text (toString Shows) ]
                , fadingHr
                , ul [ class [ Gigs ] ] <|
                    List.intersperse fadingHr <|
                        List.map (venueToElmHtml)
                            [ Venue "April 2nd" "Natchez Hills Winery" "2:00pm"
                            , Venue "April 9th" "Drifter's BBQ" "2:00pm"
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
                ]
                []
            , fadingHr
            , iframe
                [ seamless True
                , src <| soundCloudiFrameBaseUrl ++ "278360717" ++ soundCloudiFrameParams
                ]
                []
            , fadingHr
            , iframe
                [ seamless True
                , src <| soundCloudiFrameBaseUrl ++ "192483435" ++ soundCloudiFrameParams
                ]
                []
            ]
        , section [ id Contact ]
            [ h2 [] [ text (toString Contact) ]
            , fadingHr
            , a [ href "mailto:booking@caldwell.band" ] [ text "booking@caldwell.band" ]
            ]
        ]


venueToElmHtml : Venue -> Html a
venueToElmHtml (Venue a b c) =
    li [ class [ Gig ] ] <|
        List.map (\string -> span [] [ text string ]) [ a, b, c ]


soundCloudiFrameBaseUrl : String
soundCloudiFrameBaseUrl =
    "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/"


soundCloudiFrameParams : String
soundCloudiFrameParams =
    "&amp;color=000000&amp;auto_play=false&amp;hide_related=true&amp;liking=false&amp;show_artwork=false&amp;show_comments=false&amp;show_user=false&amp;show_reposts=false"


fadingHr : Html a
fadingHr =
    node "fading-hr" [] []
