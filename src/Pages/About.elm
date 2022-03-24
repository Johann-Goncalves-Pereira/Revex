module Pages.About exposing (Model, Msg, page)

import Gen.Params.About exposing (Params)
import Gen.Route as Route
import Page
import Request
import Shared
import UI exposing (pageConfig)
import View exposing (View)
import Html exposing (text)
import Html.Attributes exposing (class)


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
                , mainAttrs = [ class "grid justify-center items-center" ]
                , mainContent = [ text "" ]
            }
    }
