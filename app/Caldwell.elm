module Caldwell exposing (main)

-- Libs

import Html exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)


main : Program Never Bool Bool
main =
    beginnerProgram
        { model = False
        , view = view
        , update = update
        }
