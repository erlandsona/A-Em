module Caldwell.Types.UI exposing (..)

import Navigation exposing (Location)

type Page
    = Home
    | Music
    | Shows
    | About
    | Contact

type Nav
    = Closed
    | Open

type Msg
    = Toggle Nav
    | GoToUrl Location
    | SetUrl String
