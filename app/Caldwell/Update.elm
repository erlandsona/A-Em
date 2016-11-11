module Caldwell.Update exposing (update)

update : Bool -> Bool -> Bool
update msg model =
  case msg of
    True -> not model
    False -> model
