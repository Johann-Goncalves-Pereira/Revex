module UI exposing (UIConfig, defaultConfig, layout)

import Gen.Route as Route exposing (Route)
import Html exposing (Attribute, Html, a, div, header, main_, nav, text)
import Html.Attributes exposing (attribute, class, classList, href, id)



-- Model


type alias UIConfig msg =
    { route : Route
    , pageMainColor : Maybe Int
    , mousePos : Maybe { posX : Float, posY : Float }
    , mainTagContent : List (Html msg)
    , mainTagAttrs : List (Attribute msg)
    }


type alias Link =
    { routeStatic : Route
    , routeReceived : Route
    , routeName : String
    , hasMarginLeft : Bool
    }


defaultConfig : UIConfig msg
defaultConfig =
    { route = Route.Home_
    , pageMainColor = Nothing
    , mousePos = Nothing
    , mainTagContent = []
    , mainTagAttrs = []
    }


defaultLink : Link
defaultLink =
    { routeStatic = Route.Home_
    , routeReceived = Route.Home_
    , routeName = ""
    , hasMarginLeft = False
    }



-- Structure


isRoute : Route -> Route -> Bool
isRoute route compare =
    case ( route, compare ) of
        ( Route.Home_, Route.Home_ ) ->
            True

        _ ->
            False


caseNamePage : Route -> String
caseNamePage route =
    case route of
        Route.Home_ ->
            "Home"

        Route.About ->
            "About"

        Route.NotFound ->
            "Not Found"



-- View


viewLink : Link -> Html msg
viewLink model =
    a
        [ href <| Route.toHref model.routeStatic
        , class "main-header__links"
        , classList
            [ ( "main-header__links--current-page"
              , isRoute model.routeReceived model.routeStatic
              )
            , ( "main-header__links--margin-left", model.hasMarginLeft )
            ]
        ]
        [ text model.routeName ]


layout : UIConfig msg -> List (Html msg)
layout model =
    let
        mainClass : Attribute msg
        mainClass =
            class <| "main--" ++ caseNamePage model.route
    in
    [ div
        [ id "root"
        , classList [ ( "scroll", True ), ( "root--" ++ caseNamePage model.route, True ) ]
        , "--clr-brand: "
            ++ String.fromInt (Maybe.withDefault 90 model.pageMainColor)
            |> attribute "style"
        ]
        [ --
          case model.mousePos of
            Just mousePos ->
                div
                    [ "--screenMousePosX:"
                        ++ String.fromFloat mousePos.posX
                        ++ "--screenMousePosY:"
                        ++ String.fromFloat mousePos.posY
                        |> attribute "style"
                    ]
                    []

            Nothing ->
                text ""
        , header [ class "main-header" ]
            [ nav [ class "main-header__nav" ]
                [ viewLink
                    { defaultLink
                        | routeName = caseNamePage Route.Home_
                        , routeStatic = Route.Home_
                        , routeReceived = model.route
                    }
                , viewLink
                    { defaultLink
                        | routeName = caseNamePage Route.About
                        , routeStatic = Route.About
                        , routeReceived = model.route
                    }
                ]
            ]
        , main_ (mainClass :: model.mainTagAttrs) model.mainTagContent
        ]
    ]
