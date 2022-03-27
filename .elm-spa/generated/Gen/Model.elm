module Gen.Model exposing (Model(..))

import Gen.Params.About
import Gen.Params.Home_
import Gen.Params.NotFound
import Pages.About
import Pages.Home_
import Pages.NotFound


type Model
    = Redirecting_
    | About Gen.Params.About.Params Pages.About.Model
    | Home_ Gen.Params.Home_.Params Pages.Home_.Model
    | NotFound Gen.Params.NotFound.Params

