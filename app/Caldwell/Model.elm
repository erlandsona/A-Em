module Caldwell.Model exposing (..)

import Date exposing (Date)

import Caldwell.Types exposing (..)


type alias Model =
    { history : List Page
    , nav : Nav
    , date : Date
    , shows : List Venue
    }
