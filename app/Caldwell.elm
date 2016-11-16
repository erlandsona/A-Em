module Caldwell exposing (main)

-- Libs

import Html.App exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)


main : Program Never
main =
    beginnerProgram
        { model = False
        , view = view
        , update = update
        }
