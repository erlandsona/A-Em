module Caldwell.Model exposing (model, Model)

import Debug exposing (log)
import Caldwell.Types.UI exposing (Nav(..), Page(..))



-- MODEL


type alias Model =
    { navbar : Nav
    , currentPage : Page
    }


model : Model
model =
    { navbar = Closed
    , currentPage = Home
    }
