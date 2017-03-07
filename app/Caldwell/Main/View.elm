module Caldwell.Main.View exposing (template)

-- Libraries

import Date exposing (Month(..), Day(..), Date)
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


template : Html Msg
template =
    main_ []
        [ section [ id Home ] []
        , section [ id About ] Bio.template
        , section [ id Shows ]
            [ node caldwellCalendar
                []
                [ h2 [] [ text (toString Shows) ]
                , fadingHr
                , ul [ class [ Gigs ] ]
                    [ li [ class [ Gig ] ]
                        [ span [] [ text "March 7th" ]
                        , span [] [ text "Bridge Bar" ]
                        , span [] [ text "9:15pm" ]
                        ]
                    , fadingHr
                    , li [ class [ Gig ] ]
                        [ span [] [ text "March 16th" ]
                        , span [] [ text "Belcourt Taps" ]
                        , span [] [ text "8:00pm" ]
                        ]
                    , fadingHr
                    , li [ class [ Gig ] ]
                        [ span [] [ text "April 2nd" ]
                        , span [] [ text "Nachez Hills Winery" ]
                        , span [] [ text "2:00pm" ]
                        ]
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
              , p [] [ text "booking@caldwell.band" ]
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
