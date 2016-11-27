module Caldwell.UI.MainStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Helpers exposing (prop)


css : Snippet
css =
    main_
        [ prop "transition" "0.1s"
        , children
            [ section
                [ height (vh 100)
                , width (pct 100)
                , prop "transition" "1s"
                , prop "-webkit-overflow-scrolling" "touch"
                , paddingLeft (em 1)
                , paddingTop (vh 12)
                , overflow auto
                , children
                    [ h1
                        [ marginBottom (pct 3) ]
                    ]
                ]
            ]
        ]


