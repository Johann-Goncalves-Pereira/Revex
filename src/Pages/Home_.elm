module Pages.Home_ exposing (Model, Msg, page)

import Components.Svg as SVG exposing (Logo(..))
import Gen.Params.Home_ exposing (Params)
import Gen.Route as Route
import Html exposing (Html, a, div, h1, h2, h5, header, li, p, section, text, ul)
import Html.Attributes exposing (alt, attribute, class, href, id, rel, src, style, tabindex, target)
import Html.Attributes.Aria exposing (ariaLabel, ariaLabelledby)
import Page
import Request
import Shared
import Svg exposing (desc)
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
    { title = "Revex - Home"
    , body = viewPage
    }


viewPage : List (Html msg)
viewPage =
    [ header [ class "header" ]
        [ div [ class "logo" ]
            []
        , ul [] <|
            li [class "selected"]
                [ p [ class "icon" ] []
                , div [ class "thing" ]
                    [ p [ class "text" ] [ text "Information" ]
                    , p [ class "numeric" ] [ text "83" ]
                    ]
                ]
                :: List.repeat 8
                    (li []
                        [ p [ class "icon" ] []
                        , div [ class "thing" ]
                            [ p [ class "text" ] [ text "Information" ]
                            , p [ class "numeric" ] [ text "83" ]
                            ]
                        ]
                    )
        ]
    ]
