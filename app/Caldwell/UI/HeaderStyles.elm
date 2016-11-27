module Caldwell.UI.HeaderStyles exposing (css)

-- Libraries

import Css exposing (..)
import Css.Elements exposing (header)

import Caldwell.Helpers exposing (prop)
import Caldwell.Constants exposing (sideGutter)

css : Snippet
css =
    header
        [ prop "user-select" "none"
        , fontFamily cursive
        , cursor pointer
        , display initial
        , position fixed
        , fontFamilies [ "Megrim" ]
        , fontSize (pct 300)
        , prop "padding" ("calc("++(toString sideGutter)++"rem - 2px)") -- adjust for fontness
        , prop "z-index" "1"
        ]




-- <style>
-- 	.box {
-- 		width:600px;
-- 		height:400px;
-- 		position: absolute;
--     overflow: auto;
-- 	}
-- 	.box .left {
-- 		background-color: #f00;
-- 		height:1px;
-- 		float:left;
-- 		clear:left;
-- 		top:1px;
--     width: 200px;
--     height: 200px;
--     position:relative;
-- 	}
-- </style>

-- <div class="box">
--   <div class="left"></div>
-- Regular readers of my blog probably remember my endless discussions about copyright. Every time that I see a song in my profile “deleted by the author” I ask to myself: don’t they understand that if I hear a song and I like, chances are that I will buy the CD?
-- It seems that they don’t. Even Frank Sinatra, dead for more than a decade, deleted his song from my profile (of course it was not him, but the record company).
-- During this trip to Madrid/Zurich/Davos/Munich, I had a chance to talk about copyright and internet. In my speech for DLD 08, I mention myspace and these deleted songs. I went further, and said, for the first time, that I have a Pirate site, where readers can read my books before buying them. There was un uproar from the industry (that reacted bad), and the communities in internet (that reacted in a positive way). If you type “Pirate Coelho” in google, at the moment that I am writing this, there is more than 600 entries.
-- To illustrate my position, I am doing a copy/paste of an article published yesterday in Fortune 500. I did not ask permission to David Kirkpatrick, the journalist, but I am sure he will not mind.
-- Regular readers of my blog probably remember my endless discussions about copyright. Every time that I see a song in my profile “deleted by the author” I ask to myself: don’t they understand that if I hear a song and I like, chances are that I will buy the CD?
-- It seems that they don’t. Even Frank Sinatra, dead for more than a decade, deleted his song from my profile (of course it was not him, but the record company).
-- During this trip to Madrid/Zurich/Davos/Munich, I had a chance to talk about copyright and internet. In my speech for DLD 08, I mention myspace and these deleted songs. I went further, and said, for the first time, that I have a Pirate site, where readers can read my books before buying them. There was un uproar from the industry (that reacted bad), and the communities in internet (that reacted in a positive way). If you type “Pirate Coelho” in google, at the moment that I am writing this, there is more than 600 entries.
-- To illustrate my position, I am doing a copy/paste of an article published yesterday in Fortune 500. I did not ask permission to David Kirkpatrick, the journalist, but I am sure he will not mind.
-- Regular readers of my blog probably remember my endless discussions about copyright. Every time that I see a song in my profile “deleted by the author” I ask to myself: don’t they understand that if I hear a song and I like, chances are that I will buy the CD?
-- It seems that they don’t. Even Frank Sinatra, dead for more than a decade, deleted his song from my profile (of course it was not him, but the record company).
-- During this trip to Madrid/Zurich/Davos/Munich, I had a chance to talk about copyright and internet. In my speech for DLD 08, I mention myspace and these deleted songs. I went further, and said, for the first time, that I have a Pirate site, where readers can read my books before buying them. There was un uproar from the industry (that reacted bad), and the communities in internet (that reacted in a positive way). If you type “Pirate Coelho” in google, at the moment that I am writing this, there is more than 600 entries.
-- To illustrate my position, I am doing a copy/paste of an article published yesterday in Fortune 500. I did not ask permission to David Kirkpatrick, the journalist, but I am sure he will not mind.
-- </div>
-- <script type="text/javascript">
-- $(".box").scroll(function() {
--   $(".box .left").first().css("margin-top", $(this).scrollTop()+"px");
--  });
-- </script>







