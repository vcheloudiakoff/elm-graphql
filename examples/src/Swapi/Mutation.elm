-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Swapi.Mutation exposing (..)

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.Operation exposing (RootMutation)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Swapi.Enum.Phrase
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootMutation
selection constructor =
    Object.selection constructor


type alias SendMessageRequiredArguments =
    { characterId : Swapi.Scalar.Id, phrase : Swapi.Enum.Phrase.Phrase }


sendMessage : SendMessageRequiredArguments -> SelectionSet decodesTo Swapi.Object.ChatMessage -> Field (Maybe decodesTo) RootMutation
sendMessage requiredArgs object =
    Object.selectionField "sendMessage" [ Argument.required "characterId" requiredArgs.characterId (\(Swapi.Scalar.Id raw) -> Encode.string raw), Argument.required "phrase" requiredArgs.phrase (Encode.enum Swapi.Enum.Phrase.toString) ] object (identity >> Decode.nullable)
