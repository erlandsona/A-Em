module Caldwell.Constants exposing (..)

-- Libraries
import Css exposing (hex, Color, Rem)

-- Source

import Caldwell.Types exposing (Page(..))


-- Paddings / Margins


gutterSize : Rem
gutterSize =
    Css.rem 1

titleHeight : Rem
titleHeight =
    Css.rem 3


-- Colors


white : Color
white =
    hex "#FFFFFF"


lightGrey : Color
lightGrey =
    hex "#AAAAAA"


grey : Color
grey =
    hex "#777777"


darkGrey : Color
darkGrey =
    hex "#333333"


black : Color
black =
    hex "#000000"

pageList : List Page
pageList =
    [ Home
    , Music
    , Shows
    , About
    , Contact
    ]

intOfPages : Int
intOfPages = List.length pageList

floatOfPages : Float
floatOfPages = toFloat intOfPages


-- Cross FileType Names
-- (EG: HTML / CSS selectors with same names.)


caldwellBackground : String
caldwellBackground =
    "caldwell-background"


blackOverlay : String
blackOverlay =
    "black-overlay"


container : String
container =
    "container"
