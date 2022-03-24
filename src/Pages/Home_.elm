module Pages.Home_ exposing (Model, Msg, page)

import Gen.Params.Home_ exposing (Params)
import Gen.Route as Route
import Html exposing (Html, a, div, h1, h2, p, section, text)
import Html.Attributes exposing (alt, attribute, class, id, src, style)
import Html.Attributes.Aria exposing (ariaLabelledby)
import Page
import Request
import Shared
import Svg exposing (svg)
import Svg.Attributes as SA
import UI exposing (pageConfig)
import View exposing (View, placeholder)


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
                | route = Route.Home_
                , mainAttrs = [ class "grid justify-center items-center" ]
                , mainContent = [ viewPlaceholder ]
            }
    }


viewPlaceholder : Html msg
viewPlaceholder =
    section [ class "bg-surface-2 p-4 rounded-xl", ariaLabelledby "placeholder" ]
        [ h1 [ class "text-center text-2xl", id "placeholder" ] [ text "Base Project" ]
        , h2 [ class "text-center opacity-60 text-xs" ] [ text "Start a Project with this feature integrated" ]

        ]
