port module Caldwell.Ports exposing (easeIntoView)

port easeIntoView : ID -> Cmd msg

type alias ID = String
