module Caldwell exposing (main)

-- Libs

import Html exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (..)
-- import Caldwell.Update exposing (update)


main : Program Never Model Message
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
