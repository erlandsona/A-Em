module Caldwell.Main.View exposing (template)


-- Libraries
import Date exposing (month, year, Day(..), Date)
import Html exposing (..)
-- import Html.Attributes exposing (id)
import Html.CssHelpers exposing (withNamespace)
-- import Markdown
import String.Extra exposing (clean)

-- Source

import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Model exposing (Model)
import Caldwell.Types exposing (..)

{id, class} = withNamespace ""

template : Model -> Html Msg
template { date } =
    main_ []
        [ section [ id Home ] [ ]
        , section [ id Music ]
            []
        , section [ id Shows ]
            [ node "caldwell-calendar" []
                [ h2 [] [ text <| toString (month date) ++ " " ++ toString (year date) ]
                , fadingHr
                , ul [ class [Gigs] ]
                    ([Mon, Tue, Wed, Thu, Fri, Sat, Sun] |>
                        List.map (\day ->
                            li
                                [ class [Gig] ]
                                [ text <| toString day
                                , fadingHr
                                ])
                    )
                ]
            ]
        , section [ id About ]
            [ h3 [] [ text "A&Em "]
            , p [] [ text
                    "started playing together as a duo about a year after they had met and fallen in love under the fireworks and neon signs of downtown Nashville."
                ]
            , p [] [ text
                    "They've played together for the past year at numerous Nashville venues and are currently working to record an EP."
                ]
            ]
        , section [ id Contact ]
            []
        ]








-- bio : Html a
-- bio = Markdown.toHtml [] """
-- ### A&Em...
-- started playing together as a duo about a year after they had met and fallen in love under the fireworks and neon signs of downtown Nashville.

-- They've played together for the past year at numerous Nashville venues and are currently working to record an EP.
-- """


fadingHr : Html a
fadingHr = node "fading-hr" [] []
