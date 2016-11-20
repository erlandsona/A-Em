module Caldwell.UI.HeaderStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (header)

import Caldwell.Helpers exposing (prop)

css : Snippet
css =
    header
        [ prop "user-select" "none"
        , fontFamily cursive
        , cursor pointer
        , display initial
        , fontFamilies [ "Megrim" ]
        , fontSize (Css.rem 3)
        ]
