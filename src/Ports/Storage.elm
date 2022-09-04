port module Ports.Storage exposing (Storage, changeInt, changeString, fromJson, onChange)

import Json.Decode as D
import Json.Decode.Pipeline as P
import Json.Encode as E


{-| A port for saving communicating with the browser's local storage.
-}
port save : D.Value -> Cmd msg


{-| A port for load communicating with the browser's local storage.
-}
port load : (D.Value -> msg) -> Sub msg


{-| Storage Model.
-}
type alias Storage =
    { string : String
    , int : Int
    }


init : Storage
init =
    { string = ""
    , int = 0
    }


{-| Convert elm to JSON.
-}
toJson : Storage -> D.Value
toJson storage =
    E.object
        [ ( "string", E.string storage.string )
        , ( "int", E.int storage.int )
        ]


{-| Convert JSON to elm.
-}
fromJson : D.Value -> Storage
fromJson value =
    value
        |> D.decodeValue decodeStorage
        |> Result.withDefault init


decodeStorage : D.Decoder Storage
decodeStorage =
    D.succeed Storage
        |> P.required "string" D.string
        |> P.required "int" D.int


{-| Send the elm update to browser local storage.
-}
changeString : Storage -> String -> Cmd msg
changeString storage string =
    { storage | string = string }
        |> toJson
        |> save


changeInt : Storage -> (Int -> Int -> Int) -> Cmd msg
changeInt storage sign =
    { storage | int = sign storage.int 1 }
        |> toJson
        |> save


{-| Receive the elm update to browser local storage.
-}
onChange : (Storage -> msg) -> Sub msg
onChange fromStorage =
    fromJson
        >> fromStorage
        |> load
