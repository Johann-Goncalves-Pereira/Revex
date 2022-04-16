module Pages.About exposing (Model, Msg, page)

import Gen.Params.About exposing (Params)
import Gen.Route as Route
import Html exposing (Html, button, div, em, h1, input, p, section, text)
import Html.Attributes exposing (class, id, value)
import Html.Attributes.Aria exposing (ariaLabelledby)
import Html.Events exposing (onClick, onInput)
import Page
import Request
import Shared
import UI exposing (pageConfig)
import View exposing (View)


page : Shared.Model -> Request.With Params -> Page.With Model Msg
page shared req =
    Page.sandbox
        { init = init
        , update = update
        , view = view
        }



-- INIT


type alias Model =
    { inputValue : String, intValue : Int }


init : Model
init =
    { inputValue = "", intValue = 0 }



-- UPDATE


type Msg
    = ChangeInput String
    | AddValue
    | SubtractValue


update : Msg -> Model -> Model
update msg model =
    case msg of
        ChangeInput newString ->
            { model | inputValue = newString }

        AddValue ->
            { model | intValue = model.intValue + 1 }

        SubtractValue ->
            { model | intValue = model.intValue - 1 }



-- VIEW


view : Model -> View Msg
view model =
    { title = "Revex - About"
    , body =
        UI.layout
            { pageConfig
                | route = Route.About
                , mainAttrs = [ class "flex justify-center items-center" ]
                , mainContent = [ viewPlaceholder model ]
            }
    }


viewPlaceholder : Model -> Html Msg
viewPlaceholder model =
    section [ class "bg-surface-2 p-8 rounded-xl w-[clamp(18rem,28vw,30rem)] md:scale-125", ariaLabelledby "heading" ]
        [ h1 [ class "font-medium text-xl mb-3", id "heading" ] [ text "About" ]
        , p [ class "text-sm opacity-70" ]
            [ text """I'll start with a question, have you someday want to start to some site?
                      And then you give up because, you don't want to remake all the environment?
                      Me too! So, I made this boilerplate to start prototyping easily."""
            ]
        , div [ class "relative" ]
            [ p [ class "absolute left-2 top-1/2 -translate-y-1/2 text-xs text-[#ffffff86] pointer-events-none select-none" ] [ text "Input value: " ]
            , input [ class "bg-surface-1 p-2 rounded-lg w-full pl-20 border-0 my-5 h-8", onInput ChangeInput, value model.inputValue ] []
            ]
        , div [ class "grid grid-cols-[max-content,1fr] items-center bg-surface-1 p-2 rounded-lg mb-5 w-full h-8" ]
            [ em [ class "text-xs text-[#ffffff86] pr-2 pointer-events-none select-none" ] [ text "Inverted value: " ]
            , p [ class "overflow-hidden" ] [ String.reverse model.inputValue |> text ]
            ]
        , div [ class "flex items-center justify-center gap-5" ]
            [ button [ class "bg-surface-1 px-6 py-2 rounded-lg", onClick SubtractValue ] [ text "-" ]
            , p [ class "bg-surface-1 px-6 py-2 rounded-lg w-full text-center pointer-events-none select-none cursor-default" ]
                [ text <| String.fromInt model.intValue ]
            , button [ class "bg-surface-1 px-6 py-2 rounded-lg", onClick AddValue ] [ text "+" ]
            ]
        ]
