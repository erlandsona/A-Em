module Caldwell.Types exposing (..)

import Date exposing (Date)
import Navigation exposing (Location)

type Page
    = Home
    | Music
    | Shows
    | About
    | Contact

type Msg
    = GoToUrl Location
    | SetUrl Page
    | Todays Date
    | Toggle Nav

type HtmlClass
    = Gigs
    | Gig

type Nav = Open | Closed
