module Caldwell exposing (main)

-- Libs

import Html.App exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (html)
import Caldwell.Update exposing (update)


main : Program Never
main =
    beginnerProgram
        { model = False
        , view = html
        , update = update
        }
