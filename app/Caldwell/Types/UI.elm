module Caldwell.Types.UI exposing (..)

import Date exposing (Date)

type Page
    = Home
    | Music
    | Shows
    | About
    | Contact

type Msg
    = GoToUrl Page
    | SetUrl Page
    | Todays Date
    | ToggleNav Bool
