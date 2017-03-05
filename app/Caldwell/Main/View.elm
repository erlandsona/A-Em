module Caldwell.Main.View exposing (template)

-- Libraries

import Date exposing (Month(..), Day(..), Date)
import Html exposing (..)


-- import Html.Attributes exposing (id)

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
                [ h2 [] [ text "Shows" ]
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
                    , fadingHr
                    ]
                ]
            ]
          -- , section [ id Music ] []
          -- , section [ id Contact ] []
        ]


fadingHr : Html a
fadingHr =
    node "fading-hr" [] []
