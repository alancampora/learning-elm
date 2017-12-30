module Main exposing (..)

import Html exposing (Html, div, input, text)
import Html.Events exposing (onInput)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- model


type alias Model =
    String


model : Model
model =
    ""



-- update


type Msg
    = SetInput String


update : Msg -> Model -> Model
update msg model =
    case msg of
        SetInput newString ->
            newString



-- view


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text (String.reverse (toString model)) ]
        , input [ onInput SetInput ] []
        ]
