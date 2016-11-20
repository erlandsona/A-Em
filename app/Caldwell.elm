module Caldwell exposing (main)

-- Libs

import Html exposing (beginnerProgram)


-- Source

import Caldwell.View exposing (view)
import Caldwell.Update exposing (update)
import Caldwell.Model exposing (Model, model)
import Caldwell.Types.UI exposing (Msg)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
