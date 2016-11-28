module Caldwell.Types.UI exposing (..)

type Page
    = Home
    | Music
    | Shows
    | About
    | Contact

type Msg
    = NoOp
    | ToggleNav Bool
    | GoToUrl Page
    | SetUrl Page
