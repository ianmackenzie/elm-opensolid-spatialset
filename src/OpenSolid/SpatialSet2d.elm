module OpenSolid.SpatialSet2d
  ( SpatialSet2d
  , build
  ) where


{-| TODO add documentation
@docs SpatialSet2d, build
-}


import OpenSolid.Core exposing (Box2d)
import OpenSolid.Core.Box2d as Box2d
import OpenSolid.Core.Interval as Interval

{-| TODO add documentation -}
type SpatialSet2d a
  = Empty
  | Leaf Box2d a
  | Node Box2d (SpatialSet2d a) (SpatialSet2d a)


{-| TODO add documentation -}
build: (a -> Box2d) -> List a -> SpatialSet2d a
build boundsFunction items =
  Empty
