module Caldwell exposing (main)

-- Libs

import Html exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (view, update, model)
-- import Caldwell.Update exposing (update)


main : Program Never Bool Bool
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
