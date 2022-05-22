module Layout exposing (Model, initLayout, viewLayout)

import Array
import Gen.Route as Route exposing (Route)
import Html exposing (Attribute, Html, a, div, header, main_, nav, text)
import Html.Attributes exposing (class, classList, href, id, tabindex)
import Regex



-- Model


type alias Model msg =
    { route : Route
    , mainContent : List (Html msg)
    , mainAttrs : List (Attribute msg)
    }


type alias Link =
    { routeStatic : Route
    , routeReceived : Route
    , routeName : String
    , hasMarginLeft : Bool
    }


initLayout : Model msg
initLayout =
    { route = Route.Home_
    , mainContent = []
    , mainAttrs = []
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


routeName : Route -> String
routeName route =
    let
        strRoute : String
        strRoute =
            Route.toHref route

        getLength =
            String.length strRoute

        getFirstCharacter =
            String.dropRight (getLength - 2) strRoute
                |> String.toUpper
                |> String.dropLeft 1
    in
    if route == Route.Home_ then
        "Home"

    else
        getFirstCharacter
            ++ String.replace "/" " - " (String.dropLeft 2 strRoute)


userReplace : String -> (Regex.Match -> String) -> String -> String
userReplace userRegex replacer string =
    case Regex.fromString userRegex of
        Nothing ->
            string

        Just regex ->
            Regex.replace regex replacer string


classBuilder : String -> String
classBuilder string =
    userReplace "[ ]" (\_ -> "-") string
        |> String.toLower



-- View


viewLayout : Model msg -> List (Html msg)
viewLayout model =
    let
        mainClass : Attribute msg
        mainClass =
            class <| "main--" ++ classBuilder (routeName model.route)
    in
    [ div
        [ id "root"
        , placeholderStyles 0
        , classList [ ( "scroll", True ), ( "root--" ++ classBuilder (routeName model.route), True ) ]
        ]
        [ viewHeader model
        , main_ (mainClass :: model.mainAttrs) model.mainContent
        ]
    ]


viewHeader : Model msg -> Html msg
viewHeader model =
    header [ class "main-header" ]
        [ viewHeaderLinks model [ Route.Home_, Route.About ]
            |> nav
                [ class "main-header__nav"
                , placeholderStyles 1
                ]
        ]


viewHeaderLinks : Model msg -> List Route -> List (Html msg)
viewHeaderLinks model links =
    List.map
        (\staticRoute ->
            viewLink
                { defaultLink
                    | routeName = routeName staticRoute
                    , routeStatic = staticRoute
                    , routeReceived = model.route
                }
        )
        links


viewLink : Link -> Html msg
viewLink model =
    a
        [ class "main-header__links"
        , placeholderStyles 2
        , classList
            [ ( "main-header__links--current-page"
              , isRoute model.routeReceived model.routeStatic
              )
            , ( "main-header__links--margin-left", model.hasMarginLeft )
            ]
        , href <| Route.toHref model.routeStatic
        , tabindex 1
        ]
        [ text model.routeName ]


placeholderStyles : Int -> Attribute msg
placeholderStyles index =
    let
        listOfStyles : List (Attribute msg)
        listOfStyles =
            [ class "grid grid-rows-[min-content,auto] gap-8"
            , class "flex justify-center gap-4 text-2xl bg-surface-1 shadow-inner"
            , class "p-4 font-semibold md:p-8"
            ]

        arrayOfStyles : Array.Array (Attribute msg)
        arrayOfStyles =
            Array.fromList listOfStyles

        getStyle : Maybe (Attribute msg)
        getStyle =
            Array.get index arrayOfStyles
    in
    Maybe.withDefault (class "error") getStyle
