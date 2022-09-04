module Pages.About exposing (Model, Msg, page)

import Components.Layout as Layout exposing (initLayout)
import Gen.Params.About exposing (Params)
import Gen.Route as Route
import Html exposing (Html, button, div, em, h1, input, p, section, text)
import Html.Attributes exposing (class, id, value)
import Html.Attributes.Aria exposing (ariaLabelledby)
import Html.Events exposing (onClick, onInput)
import Page
import Ports.Storage as Storage exposing (Storage)
import Request
import Shared
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page.With Model Msg
page shared _ =
    Page.element
        { init = init
        , update = update shared
        , view = view shared
        , subscriptions = \_ -> Sub.none
        }



-- INIT


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}
    , Cmd.none
    )



-- UPDATE


type Msg
    = ChangeInput String
    | ChangeInt (Int -> Int -> Int)


update : Shared.Model -> Msg -> Model -> ( Model, Cmd Msg )
update shared msg model =
    case msg of
        ChangeInput newString ->
            ( model, Storage.changeString shared.storage newString )

        ChangeInt v_ ->
            ( model, Storage.changeInt shared.storage v_ )



-- VIEW


view : Shared.Model -> Model -> View Msg
view shared model =
    { title = "Revex - About"
    , body =
        Layout.viewLayout
            { initLayout
                | route = Route.About
                , mainAttrs = [ class "flex justify-center items-center" ]
                , mainContent = [ viewPlaceholder shared model ]
            }
    }


viewPlaceholder : Shared.Model -> Model -> Html Msg
viewPlaceholder shared _ =
    section [ class "bg-surface-200 p-8 rounded-xl w-[min(100vw_-_3rem,42rem)]", ariaLabelledby "heading" ]
        [ h1 [ class "text-2 font-500 mb-3", id "heading" ] [ text "About" ]
        , p [ class "text-1 opacity-70" ]
            [ text """I'll start with a question, have you someday want to start to some site?
                      And then you give up because, you don't want to remake all the environment?
                      Me too! So, I made this boilerplate to start prototyping easily."""
            ]
        , div [ class "relative" ]
            [ p [ class "absolute left-2 top-1/2 -translate-y-1/2  text-[#ffffff86] pointer-events-none select-none text-1" ] [ text "Input value: " ]
            , input [ class "bg-surface-100 p-2 pl-[13ch] rounded-lg w-full border-0 my-5 h-8 text-[0.875rem]", onInput ChangeInput, value shared.storage.string ] []
            ]
        , div [ class "grid grid-cols-[max-content,1fr] items-center bg-surface-100 p-2 rounded-lg mb-5 w-full h-8" ]
            [ em [ class "text-xs text-[#ffffff86] pr-2 pointer-events-none select-none text-1" ] [ text "Inverted value: " ]
            , p [ class "overflow-hidden text-1" ] [ String.reverse shared.storage.string |> text ]
            ]
        , div [ class "flex flex-col items-center justify-center gap-5 sm:flex-row" ]
            [ button [ class "w-full bg-surface-100 px-6 py-2 rounded-lg sm:w-auto", onClick <| ChangeInt (-) ] [ text "-" ]
            , p [ class "bg-surface-100 px-6 py-2 rounded-lg w-full text-center pointer-events-none select-none cursor-default" ]
                [ text <| String.fromInt shared.storage.int ]
            , button [ class "w-full bg-surface-100 px-6 py-2 rounded-lg sm:w-auto", onClick <| ChangeInt (+) ] [ text "+" ]
            ]
        ]
