module Caldwell.Bio.View exposing (template)

-- Libraries

import Html exposing (Html)
import Markdown exposing (toHtml)
import String.Extra exposing (clean)


template : List (Html a)
template =
    toHtml Nothing """
Instead of writing this whole thing in 3rd person, we figured we'd just tell you our story ourselves. Caldwell started on a whim, but quickly became a lot more. We drank a couple glasses of wine one night, and Austin,  almost jokingly, turns to me and saying, "wanna write a song?"  I kinda laughed it off, but we proceeded to write what we both agree now to be one of the worst songs we'd ever written. But at the time, we thought it was the coolest thing ever & so it began. For the next couple months, we wrote almost every night, and some of the songs from that "batch" are still some of our favorites. At that time, we didn't really know what we were doing, we were just writing songs and having fun together. It was a nice couple activity. Then one night in December, I just looked at Austin and said, "we should play an open mic tonight." And we did, and that spun us into recording our first couple songs, booking a ton more shows, and just having fun together playing around Nashville.

Honestly, Caldwell just became a passion project. Em spends her days writing songs for the commercial market & Austin spends his days as a computer developer (PS: he built this site!!) -- and Caldwell is just the between. It's the songs that I write that I just know I have to share with the world. A lot of them are about Austin. There's a song about when we broke up that one time, our first first, and how falling in love makes me you feel like you found your home. And for Austin, I think it's just an outlet to express his musicianship. Caldwell to him is a chance for him to write in two time signatures at once, and add his own stamp on music city.

And for everyone who followed us while we went by A & EM, we decided to change our name to Caldwell because it's where we began; it's our roots. We met in the hallway on a snowy december morning on Caldwell Avenue. And that's something we always want to hold onto. We alway want our music to be organic. To be about our relationship and life experiences.

Right now we're working on getting together a band, booking more shows, and putting an EP out in the next year. Be on the looking, because 2017 is gonna be banging.

Thanks for hanging out.

Austin & Em
"""
