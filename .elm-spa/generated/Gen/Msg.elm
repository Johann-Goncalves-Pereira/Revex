module Gen.Msg exposing (Msg(..))

import Gen.Params.About
import Gen.Params.Home_
import Gen.Params.NotFound
import Pages.About
import Pages.Home_
import Pages.NotFound


type Msg
    = About Pages.About.Msg
    | Home_ Pages.Home_.Msg

