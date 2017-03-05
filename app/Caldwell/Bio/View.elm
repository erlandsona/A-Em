module Caldwell.Bio.View exposing (template)

-- Libraries

import Html exposing (Html)
import Markdown exposing (toHtml)
import String.Extra exposing (clean)


template : List (Html a)
template =
    toHtml Nothing """
It started on a whim one afternoon in 2015 after a couple glasses of (insert favorite drink here...) One night Austin, almost jokingly, turns to me and asks, “wanna write a song?” I kinda laughed, but we began writing and in no time we had a (really) rough draft of our first song. For the next couple months, we wrote almost every night, and some of the songs from that batch are still some of our personal favorites. At the time, we didn’t really know what we were doing. We just wrote songs and had a blast building our relationship. Then one night in December, I just looked at Austin and said, “we should play an open mic tonight.” That lead us to track our first couple songs, book more shows, and just have fun together playing around Nashville.

For everyone who has followed us while we went by A & EM, we decided to change our name to Caldwell because it’s where we began; it’s our roots. We met in the hallway on a snowy december morning on Caldwell Avenue. That’s something we’ll never forget. We always want our music to be organic. To be about our relationship and life experiences.

What are we up to now? Well, EM pursues her passion for songwriting, so she spends most of her time in co-writes. Austin’s passion for recording and technology led him to learn computer programming, so his nine to five is spent building apps. And Caldwell is the songs that we write that we want to share with the world. A lot of them are about Austin (but they’re secretly about EM). There’s a song about when we broke up that one time, and one about how falling in love makes me you feel like you’re home.

Yes we know! We’re working on getting together a band, booking more shows, and putting an EP out in the next year. Be on the lookout, because 2017 is gonna be banging.

Thanks for checking out our site,

Austin & EM
"""
