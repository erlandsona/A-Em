module Caldwell.UI.Main exposing (view)


-- Libraries
import Html exposing (..)
import Html.Attributes exposing (id)
import String.Extra exposing (clean)

-- Source

import Caldwell.Helpers exposing (goTo)
import Caldwell.Types.UI exposing (Msg, Page(..))
import Caldwell.UI.Header as Header

view : Bool -> Page -> Html Msg
view navOpen page =
    main_ []
        [ Header.view navOpen
        , section
            [ id (toString Home)
            , goTo page
            ]
            [ h1 [] [ text (toString Home) ] ]
        , section
            [ id (toString Music)
            , goTo page
            ]
            ([ h1 [] [ text (toString Music) ] ] ++ lorem)
        , section
            [ id (toString Shows)
            , goTo page
            ]
            [ h1 [] [ text (toString Shows) ] ]
        , section
            [ id (toString About)
            , goTo page
            ]
            ([ h1 [] [ text (toString About) ]
            ] ++ lorem)
        , section
            [ id (toString Contact)
            , goTo page
            ]
            [ h1 [] [ text (toString Contact) ] ]
        ]


lorem =
    List.concat <| List.repeat 5 <|
      [ p []
          [ text <|
              clean """
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                  Donec a diam lectus. Sed sit amet ipsum mauris.
                  Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit.
                  Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue.
                  Nam tincidunt congue enim, ut porta lorem lacinia consectetur.
                  Donec ut libero sed arcu vehicula ultricies a non tortor.
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                  Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor.
                  Pellentesque auctor nisi id magna consequat sagittis.
                  Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet.
                  Ut convallis libero in urna ultrices accumsan.
                  Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus.
                  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                  In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.
              """
          ]
      , br [] []
      ]

