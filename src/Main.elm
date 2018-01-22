module Main exposing (..)

import Dict exposing (Dict)
import Html exposing (Html, div, h1, i, input, label, text)
import Html.Attributes as Attributes exposing (class, placeholder, type_, value)
import Html.Events as Events exposing (onClick, onInput)


---- MODEL ----


type alias Model =
    { newId : Int
    , nameInput : String
    , friends : Dict Int String
    }


init : Model
init =
    { newId = 0, nameInput = "", friends = Dict.empty }



---- UPDATE ----


type Msg
    = AddFriend
    | UpdateInput String
    | RemoveFriend Int


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddFriend ->
            if String.isEmpty model.nameInput then
                model
            else
                { nameInput = ""
                , friends = Dict.insert model.newId model.nameInput model.friends
                , newId = model.newId + 1
                }

        UpdateInput name ->
            { model | nameInput = name }

        RemoveFriend id ->
            { model | friends = Dict.remove id model.friends }



---- VIEW ----


viewFriend : ( Int, String ) -> Html Msg
viewFriend ( id, name ) =
    div [ class "card" ]
        [ div [ class "content" ]
            [ i [ class "right floated remove red icon link", onClick <| RemoveFriend id ]
                []
            , div [ class "description" ]
                [ text name ]
            ]
        ]


viewFriends : Dict Int String -> List (Html Msg)
viewFriends friends =
    List.map viewFriend (Dict.toList friends)


view : Model -> Html Msg
view model =
    div [ class "ui main text container" ]
        [ h1 [ class "ui header" ]
            [ text "Friends List" ]
        , div [ class "ui segment" ]
            [ div [ class "ui form" ]
                [ div [ class "field" ]
                    [ label []
                        [ text "Name" ]
                    , input
                        [ placeholder "Name"
                        , type_ "text"
                        , onInput UpdateInput
                        , value model.nameInput
                        ]
                        []
                    ]
                , div [ class "ui button", onClick AddFriend ]
                    [ text "Add a friend" ]
                ]
            ]
        , div [ class "ui two column cards" ] <|
            viewFriends model.friends
        , div [ class "ui segment" ] [ Html.p [] [ text (toString model) ] ]
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { view = view
        , model = init
        , update = update
        }
