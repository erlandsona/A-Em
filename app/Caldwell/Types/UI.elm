module Caldwell.Types.UI exposing (..)


type Nav
    = Closed
    | Open


type Page
    = Home
    | Music
    | Shows
    | About
    | Contact


type Msg
    = Toggle Nav
    | Go Page
