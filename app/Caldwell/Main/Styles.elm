module Caldwell.Main.Styles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Constants exposing (gutterSize)
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
                , prop "-webkit-overflow-scrolling" "touch"
                , padding4
                    (Css.rem 6) -- Top
                    (Css.rem <| gutterSize.numericValue * 3) -- Right
                    zero -- Bottom
                    gutterSize -- Left
                -- , children
                --     [ h1
                --         [ prop "display" "inline-flex"
                --         , prop "align-items" "flex-end"
                --         , height titleHeight
                --         , cursor pointer
                --         , marginBottom (Css.rem <| gutterSize.numericValue * 2)
                --         ]
                --     ]
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
            , (#) About
                [ children
                    [ h3 [ display inline ]
                    , p
                        [ firstOfType
                            [ prop "text-indent" "80px"
                            , marginTop (px -20)
                            ]
                        , lineHeight (num 1.15)
                        , marginBottom gutterSize
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
