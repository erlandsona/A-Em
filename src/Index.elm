module Index exposing (main)

-- Libraries
import Html exposing (..)
import Html.CssHelpers as A

-- Src
import Styles


-- HTML
main =
  main' []
    [ h1 [] [ text "A&Em" ]
    ]


fader = node "fader"

-- CSS
-- titleLogo =
--   style
--   [ ("color", "white")
--   , ("margin-left", "0.67em")
--   ]

-- mainStyle =
--   style
--   [ ("position", "absolute")
--   ]

-- backgroundImage =
--   style
--   [ ("background", "url(images/stairs.jpg) no-repeat")
--   , ("background-size", "cover")
--   , ("height", "100vh")
--   , ("width", "100vw")
--   ]


-- main : Html msg
-- main =
--     Html.div []
--         [ Html.div [ class [ MyCss.NavBar ] ] [ Html.text "this has the navbar class" ]
--         , Html.div [ id MyCss.Page ] [ Html.text "this has the Page id" ]
--         ]
-- Contact GitHub API Training Shop Blog About
