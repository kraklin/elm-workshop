module Main exposing (..)

import Html exposing (div, h1, text)
import Html.Attributes as Attributes exposing (class)


---- MODEL ----


type alias Model =
    String


init =
    ( "", Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update msg model =
    ( model, Cmd.none )



---- VIEW ----


view model =
    div [ class "ui main text container" ]
        [ h1 [ class "ui header" ]
            [ text "Your Elm App is Working" ]
        ]



---- PROGRAM ----


main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
