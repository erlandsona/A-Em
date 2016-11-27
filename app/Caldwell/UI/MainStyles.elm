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
        [ children
            [ Header.css
            , section
                [ height (vh 100)
                , width (pct 100)
                , prop "transition" "opacity .1s, transform 1s;"
                , prop "-webkit-overflow-scrolling" "touch"
                , paddingLeft (em sideGutter)
                , paddingRight (em sideGutter)
                , paddingTop (vh 12)
                , overflow auto
                , children
                    [ h1
                        [ marginBottom (pct 3) ]
                    ]
                ]
            ]
        ]


