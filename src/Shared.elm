module Shared exposing
    ( Flags
    , Model
    , Msg
    , init
    , subscriptions
    , update
    )

import Json.Decode as Decode
import Ports.Storage as Storage exposing (Storage)
import Request exposing (Request)


type alias Flags =
    Decode.Value


type alias Model =
    { storage : Storage }


init : Request -> Flags -> ( Model, Cmd Msg )
init _ flags =
    ( { storage = Storage.fromJson flags
      }
    , Cmd.none
    )


type Msg
    = NoOp
    | StorageUpdate Storage


update : Request -> Msg -> Model -> ( Model, Cmd Msg )
update _ msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        StorageUpdate storage_ ->
            ( { model | storage = storage_ }, Cmd.none )


subscriptions : Request -> Model -> Sub Msg
subscriptions _ _ =
    Storage.onChange StorageUpdate
