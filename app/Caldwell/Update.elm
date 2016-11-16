module Caldwell.Update exposing (update)

import Debug exposing (log)

update : Bool -> Bool -> Bool
update msg model =
  case msg of
    True ->
      log (toString model)
      not model
    False ->
      log (toString model)
      model
