module Caldwell.Main.View exposing (template)


-- Libraries
import Date exposing (month, year, Day(..), Date)
import Html exposing (..)
-- import Html.Attributes exposing (id)
import Html.CssHelpers exposing (withNamespace)
import String.Extra exposing (clean)

-- Source

import Caldwell.Bio.View as Bio
import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Model exposing (Model)
import Caldwell.Types exposing (..)

{id, class} = withNamespace ""

template : Model -> Html Msg
template { date } =
    main_ []
        [ section [ id Home ] [ ]
        , section [ id About ] Bio.template
        , section [ id Shows ]
            [ node "caldwell-calendar" []
                [ h2 []
                    [ toString (month date)
                      ++ " " ++
                      toString (year date)
                      |> text
                    ]
                , fadingHr
                , ul [ class [Gigs] ]
                    ([Mon, Tue, Wed, Thu, Fri, Sat, Sun] |>
                        List.map (\date ->
                            li
                                [ class [Gig] ]
                                [ text <| toString date
                                , fadingHr
                                ])
                    )
                ]
            ]
        -- , section [ id Music ] []
        , section [ id Contact ] []
        ]

-- March 7 Bridge Bar 9:15
-- March 16th Belcourt Taps 8 pm
-- April 2nd Natchez Hills Winery 2-4 pm 
-- May () Commodore 9 pm
-- May () Commodore 7 pm







fadingHr : Html a
fadingHr = node "fading-hr" [] []
