module Caldwell.Bio.View exposing (template)

-- Libraries

import Html exposing (Html)
import Markdown exposing (toHtml)


template : List (Html a)
template =
    toHtml Nothing """
Caldwell is a couple-turned-duo made up of Austin Erlandson and Emily Kroll.  It started on a whim one evening when, about a year into their dating relationship, Austin turned to Emily and, almost jokingly, asked if she wanted to write a song together. Both were hesitant to jump right into the music thing together at first, but decided to do it just for fun. Neither of them were thinking anything would come of the music they wrote together.

 “When we started writing together, it just kinda made sense. He cared a lot about the melodies and guitar and the “sound” of the music we were writing, and I enjoyed writing lyrics inspired by the relationship we were building.” says Emily, “Not to sound cheesy, but we completed each other musically.”  It didn’t take long after that for the couple to jump head first into a creative collaboration. 

Caldwell continues to write their story and get on as many stages as they can. They’re working on putting together an EP to be put out sometime in late 2017.
"""
