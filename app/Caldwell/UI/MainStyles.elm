module Caldwell.UI.MainStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Constants exposing (sideGutter)
import Caldwell.Helpers exposing (prop)
import Caldwell.Types exposing (Page(..), HtmlClass(..), Nav(..))
import Caldwell.Constants exposing (..)


css : List Snippet
css =
    [ main_
        [ position relative
        , children
            [ section
                [ minHeight (vh 100)
                , width (pct 100)
                -- , prop "transition" "opacity 0.1s"
                , prop "-webkit-overflow-scrolling" "touch"
                , paddingLeft (em sideGutter)
                , paddingRight (em sideGutter)
                , paddingTop (px titleHeight)
                ]
            , (#) Music
                [ children
                    [ h1
                        [ marginBottom (pct 3) ]
                    ]
                ]
            , (#) Shows
                [ children
                    [ selector "caldwell-calendar"
                        [ display block
                        , children
                            [ h2
                                [ textAlign center
                                ]
                            , fadingHr lightGrey
                            , (.) Gigs
                                [ children
                                    [ (.) Gig
                                        [ children [ fadingHr darkGrey ] ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]


fadingHr : Color -> Snippet
fadingHr background =
    selector "fading-hr"
        [ display block
        , margin2 (px 10) zero
        , height (px 1)
        , backgroundColor background
        , prop "background" <| "-webkit-gradient(linear, 0 0, 100% 0, from(black), to(black), color-stop(50%, " ++ background.value ++ "))"
        ]
