module Server exposing (..)

import Date exposing (Date(..))
import Exts.Json.Decode exposing (decodeDate)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (..)
import Json.Encode


type alias Gig =
    { gigDate : Date
    , gigVenue : String
    }


decodeGig : Decoder Gig
decodeGig =
    decode Gig
        |> required "date" decodeDate
        |> required "venue" string


encodeGig : Gig -> Json.Encode.Value
encodeGig x =
    Json.Encode.object
        [ ( "date", (Json.Encode.string << toString) x.gigDate )
        , ( "venue", Json.Encode.string x.gigVenue )
        ]
