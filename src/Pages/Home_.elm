module Pages.Home_ exposing (Model, Msg, page)

import Components.Svg as SVG exposing (Logo(..))
import Gen.Params.Home_ exposing (Params)
import Gen.Route as Route
import Html exposing (Html, a, div, h1, h2, h5, p, section, text)
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
    , body =
        UI.layout
            { pageConfig
                | route = Route.Home_
                , mainAttrs = [ class "flex flex-col gap-8 justify-center items-center" ]
                , mainContent = viewPlaceholder
            }
    }


viewPlaceholder : List (Html msg)
viewPlaceholder =
    [ h1
        [ class "text-center text-2xl"
        , id "placeholder"
        ]
        [ a
            [ class "logo-ctnr__title bg-surface-2 px-7 py-3 rounded-xl gap-2"
            , href "https://github.com/Johann-Goncalves-Pereira/Revex"
            , target "_blank"
            , rel "noopener noreferrer"
            , tabindex 1
            , ariaLabel "This template project, to start with all the tools you need faster."
            ]
            [ SVG.logo SVG.Revex, text "Revex" ]
        ]
    , section [ class "bg-surface-2 p-4 rounded-xl w-[min(70rem,100vw-4rem)] mb-8 md:p-8", ariaLabelledby "placeholder" ]
        [ div [ class "logo-ctnr flex flex-wrap items-center justify-center mb-8 gap-4 md:gap-8" ] <|
            List.map
                (\{ svg, link, desc, name } ->
                    a
                        [ class "logo-ctnr__link grid grid-rows-[auto,max-content] gap-4 h-24 w-16 md:w-24 md:h-28"
                        , href link
                        , ariaLabel desc
                        , target "_blank"
                        , rel "noopener noreferrer"
                        , tabindex 2
                        ]
                        [ svg, h5 [ class "text-xs opacity-75" ] [ text name ] ]
                )
                [ { svg = SVG.logo SVG.Elm, link = "https://elm-lang.org", desc = "A delightful language for reliable web applications.", name = "Elm" }
                , { svg = SVG.logo SVG.ElmSpa, link = "https://www.elm-spa.dev", desc = "Automatically generated a single page application for elm.", name = "Elm Spa" }
                , { svg = SVG.logo SVG.PostCss, link = "https://postcss.org", desc = "A tool for transforming CSS with JavaScript.", name = "PostCss" }
                , { svg = SVG.logo SVG.Tailwind, link = "https://tailwindcss.com", desc = "Rapidly build modern websites without ever leaving your HTML.", name = "Tailwind" }
                , { svg = SVG.logo SVG.OpenProps, link = "https://open-props.style", desc = "Supercharged CSS variables.", name = "Open Props" }
                , { svg = SVG.logo SVG.Sass, link = "https://sass-lang.com", desc = "Sass is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets.", name = "Sass" }
                , { svg = SVG.logo SVG.Vite, link = "https://vitejs.dev", desc = "Next Generation Frontend Tooling. Base of this project.", name = "Vite" }
                , { svg = SVG.logo SVG.EsBuild, link = "https://esbuild.github.io", desc = "An extremely fast JavaScript bundler.", name = "EsBuild" }
                , { svg = SVG.logo SVG.EditorConfig, link = "https://editorconfig.org", desc = "EditorConfig helps maintain consistent coding styles for multiple developers working on the same project across various editors and IDEs.", name = "EditorConfig" }
                , { svg = SVG.logo SVG.TypeScript, link = "https://www.typescriptlang.org", desc = "TypeScript is JavaScript with syntax for types.", name = "Typescript" }
                ]
        , h2 [ class "text-center opacity-60 text-xs" ] [ text "Start a Project with these features integrated" ]
        ]
    ]
