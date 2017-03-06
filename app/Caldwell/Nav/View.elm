module Caldwell.Nav.View exposing (template)

-- Libs

import Html exposing (..)
import Html.Events exposing (onClick)


-- Source

import Caldwell.Constants exposing (..)
import Caldwell.Helpers exposing (clickWithStopProp)
import Caldwell.Types exposing (Msg(..), Nav(..), Page(..))


template : Nav -> Html Msg
template navState =
    nav [ clickWithStopProp (Toggle Closed) ]
        [ aTag Home
        , aTag About
        , aTag Shows
        , aTag Music
        , aTag Contact
        , ul [ clickWithStopProp (Toggle <| not navState) ]
            [ li [] [] ]
        ]


aTag : Page -> Html Msg
aTag page =
    a [ onClick (SetUrl page) ]
        [ span [] [ text (toString page) ]
        ]


not : Nav -> Nav
not navState =
  case navState of
    Open -> Closed
    Closed -> Open
