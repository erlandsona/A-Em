module Caldwell.Types.UI exposing (..)

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
    | GoToUrl Page
    | SetUrl Page
