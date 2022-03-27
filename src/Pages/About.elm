module Pages.About exposing (Model, Msg, page)

import Gen.Params.About exposing (Params)
import Gen.Route as Route
import Html exposing (Html, h1, p, section, text)
import Html.Attributes exposing (class, id)
import Html.Attributes.Aria exposing (ariaLabelledby)
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
    {}


init : Model
init =
    {}



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> Model
update msg model =
    case msg of
        ReplaceMe ->
            model



-- VIEW


view : Model -> View Msg
view model =
    { title = "Johann - Home"
    , body =
        UI.layout
            { pageConfig
                | route = Route.About
                , mainAttrs = [ class "flex justify-center items-center" ]
                , mainContent = [ viewPlaceholder ]
            }
    }


viewPlaceholder : Html msg
viewPlaceholder =
    section [ class "bg-surface-2 p-8 rounded-xl w-[clamp(18rem,28vw,30rem)] md:scale-125", ariaLabelledby "heading" ]
        [ h1 [ class "font-medium text-xl mb-3", id "heading" ] [ text "About" ]
        , p [ class "text-sm opacity-70" ]
            [ text """I'll start with a question, have you someday want to start to some site?
                      And then you give up because, you don't want to remake all the environment?
                      Me too! So, I made this boilerplate to start prototyping easily."""
            ]
        ]
