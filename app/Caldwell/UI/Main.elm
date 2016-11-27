module Caldwell.UI.Main exposing (view)


-- Libraries
import Html exposing (..)
import Html.Attributes exposing (id)
import String.Extra exposing (clean)

-- Source

import Caldwell.Helpers exposing (goTo)
import Caldwell.Types.UI exposing (Msg, Page(..))

view : Page -> Html Msg
view page =
    main_ []
        [ section
            [ id (toString Home)
            , goTo page
            ]
            [ h1 [] [ text (toString Home) ] ]
        , section
            [ id (toString Music)
            , goTo page
            ]
            [ h1 [] [ text (toString Music) ] ]
        , section
            [ id (toString Shows)
            , goTo page
            ]
            [ h1 [] [ text (toString Shows) ] ]
        , section
            [ id (toString About)
            , goTo page
            ]
            [ h1 [] [ text (toString About) ]
            , p []
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
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            , p []
                [ text "Stuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and thingsStuff and things" ]
            ]
        , section
            [ id (toString Contact)
            , goTo page
            ]
            [ h1 [] [ text (toString Contact) ] ]
        ]
