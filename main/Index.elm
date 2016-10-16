import Html exposing (..)
import Html.Attributes exposing (..)

-- HTML
main =
  main' [ backgroundImage ]
  [ fader [ blackOverlay ] []
  , container [ containerStyle ]
    [ h1 [ titleLogo ] [ text "A&Em" ]
    ]
  ]


fader = node "fader"
container = node "container"

-- CSS
titleLogo =
  style
  [ ("color", "white")
  , ("margin-left", "0.67em")
  ]

containerStyle =
  style
  [ ("position", "absolute")
  ]

backgroundImage =
  style
  [ ("background", "url(images/stairs.jpg) no-repeat")
  , ("background-size", "cover")
  , ("height", "100vh")
  , ("width", "100vw")
  ]

blackOverlay =
  style
  [ ("background", "black")
  , ("height", "100vh")
  , ("width", "100vw")
  , ("position", "absolute")
  , ("opacity", "0.7")
  ]



