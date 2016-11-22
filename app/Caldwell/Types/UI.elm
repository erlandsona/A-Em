module Caldwell.Types.UI exposing (..)

type Page
    = Home
    | Music
    | Shows
    | About
    | Contact

type Msg
    = ToggleNav Bool
    | GoToUrl Page
    | SetUrl Page
