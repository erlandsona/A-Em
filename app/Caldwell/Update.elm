module Caldwell.Update exposing (update)

-- Libraries

import Debug exposing (log)


-- Source

import Caldwell.Types.UI exposing (Msg(..))
import Caldwell.Model exposing (Model)


update : Msg -> Model -> Model
update msg model =
    case log "Stuff" msg of
        Toggle nav ->
            { model | navbar = nav }

        Go page ->
            { model | currentPage = page }
