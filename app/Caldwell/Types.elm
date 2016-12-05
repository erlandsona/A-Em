module Caldwell.Types exposing (..)

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

type Classes
    = Nav
    | Gigs
    | Gig
