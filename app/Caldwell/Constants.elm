module Caldwell.Constants exposing (..)

import Css exposing (hex, Color)


-- Paddings / Margins


sideGutter : Float
sideGutter =
    0.5



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
