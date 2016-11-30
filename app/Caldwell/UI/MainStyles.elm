module Caldwell.UI.MainStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Constants exposing (sideGutter)
import Caldwell.Helpers exposing (prop)
import Caldwell.UI.HeaderStyles as Header


css : Snippet
css =
    main_
        [ position relative
        , children
            [ Header.css
            , section
                [ minHeight (vh 100)
                , width (pct 100)
                , prop "transition" "opacity .1s, transform 1s;"
                , prop "-webkit-overflow-scrolling" "touch"
                , paddingLeft (em sideGutter)
                , paddingRight (em sideGutter)
                , paddingTop (px 68)
                , children
                    [ h1
                        [ marginBottom (pct 3) ]
                    ]
                ]
            ]
        ]


