module Colors exposing (..)

import Css exposing (rgba, hex, Color)

black : Color
black = hex "#000000"

white : Color
white = hex "#FFFFFF"

yellow : Color
yellow = hex "#FFFF00"

red : Color
red = hex "#FF0000"

green : Color
green = hex "#00FF00"

purple : Color
purple = hex "#FF00FF"

headerBackground : Color
headerBackground = hex "#3f51b5"

darkFade : Color
darkFade = rgba 0 0 0 0.6

darken : Color -> Color
darken color =
    if color == (hex "#3f51b5") then
        hex "#333333"
    else
      color

