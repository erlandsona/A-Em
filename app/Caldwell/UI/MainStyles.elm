module Caldwell.UI.MainStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (..)


-- Source

import Caldwell.Helpers exposing (prop)


css : Snippet
css =
    main_
        [ position absolute
        , top (vh 7)
        , left (vw 7)
        , height (vh 93)
        , width (vw 93)
        , overflow hidden
        , prop "transition" "0.1s"
        , children
            [ section
                [ height (pct 100)
                , width (pct 100)
                , prop "transition" "1s"
                , overflow auto
                , prop "-webkit-overflow-scrolling" "touch"
                , padding (em 1)
                ]
            ]
        ]
