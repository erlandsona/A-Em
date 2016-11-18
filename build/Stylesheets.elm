port module Stylesheets exposing (main)

import Css.File exposing (CssFileStructure, compile, toFileStructure)
import Platform
import ReNormalizer
import Caldwell.Styles as Styles


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure [ ( "styles.css", compile [ ReNormalizer.css, Styles.css ] ) ]


main : Program Never () msg
main =
    Platform.program
        { init = ( (), files cssFiles )
        , update = \_ _ -> ( (), Cmd.none )
        , subscriptions = \_ -> Sub.none
        }
