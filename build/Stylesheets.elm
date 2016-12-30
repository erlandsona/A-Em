port module Stylesheets exposing (main)

import Css.File exposing (CssFileStructure, CssCompilerProgram, compile, compiler, toFileStructure)
import Platform
import ReNormalizer
import Caldwell.Styles as Styles


port files : CssFileStructure -> Cmd msg


structure : CssFileStructure
structure =
    toFileStructure [ ( "styles.css", compile [ ReNormalizer.css, Styles.css ] ) ]


main : CssCompilerProgram
main = compiler files structure
