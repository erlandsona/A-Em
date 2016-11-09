module View exposing (main)

-- Libraries
import Html exposing (..)
-- import Html.CssHelpers as A


main : Html a
main = container
  [ nav []
    [ button [] [ text  "caldwell" ] ]
  , animator
  , main' []
    [ h1 []
      [text "
      A&Em and stuff and things and stuff and yah
      know what more stuff because I love stuff and things
      and all the types of stuff that you can get with
      the things that you put your stuff into.
      "] ]
  ]
  -- UnZip a list of Nav Actionables
  -- with content to be 3dTransformed in css.

-- <div class="site-container">
--   <div class="site-pusher">
--     <header class="header">
--       <a href="#" class="header__logo" id="header__icon">Logo</a>
--       <nav class="menu">
--         <a href="#">Home</a>
--         <a href="#">About</a>
--         <a href="#">Blog</a>
--         <a href="#">Contact</a>
--       </nav>
--     </header>
--     <div class="site-content">
--       <div class="container">
        
--         <h1>Responsive Navigation Bar</h1>
--         <p>Tutorial by Grafikart.fr 
--           <a href="https://www.youtube.com/watch?v=_X2N_yw9Boo" target="_blank" style="color: blue">https://www.youtube.com/watch?v=_X2N_yw9Boo</a>
--         </p>
--       </div> <!-- END container -->
--     </div> <!-- END site-content -->
--     <div class="site-cache" id="site-cache"></div>
--   </div> <!-- END site-pusher -->
-- </div> <!-- END site-container -->


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



-- Custom Elements

container : List (Html a) -> Html a
container = node "container" []

animator : Html a
animator = node "animator" [] []

