module Main exposing (..)

import Html exposing (Html, div, h1, h2, text)


---- MODEL ----


type alias Model =
    String


init : Model
init =
    "Elm workshop"



---- UPDATE ----


type Msg
    = Noop


update : Msg -> Model -> Model
update msg model =
    model



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 []
            [ text "Welcome to" ]
        , h2 []
            [ text model ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { view = view
        , model = init
        , update = update
        }
