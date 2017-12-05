module Main exposing (..)

import Html exposing (div, h1, text)
import Html.Attributes as Attributes exposing (class)


---- MODEL ----


init =
    ( "", Cmd.none )



---- UPDATE ----


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
