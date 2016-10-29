module View exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A


main : Html a
main =
  container
    [ nav
      [ button [] [ text  "caldwell" ] ]
    , animator
    ]
  -- UnZip a list of Nav Actionables
  -- with content to be 3dTransformed in css.



-- main.container
--   nav

--     each val, index in fonts
--       if index + 1 === 1
--         input(id='rad#{index + 1}' checked name='rad', type='radio')
--       else
--         input(id='rad#{index + 1}' name='rad', type='radio')
--       label(data-text='Baby Step #{index + 1}', class='ra-#{val}', for='rad#{index + 1}')

--     .animator

--     each val, index in fonts
--       article.tab-c
--         .card
--           h1(class='ra-#{val}')
--           .title
--             h1 Baby Step #{index + 1}
--             p #{heading[index][0]}
--           .body
--             p #{heading[index][1]}
--             p #{heading[index][2]}




container = node "container" []
animator = node "animator" [] []
nav = node "nav" []

