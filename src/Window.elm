module Window
    ( dimensions, width, height
    ) where

{-| Provides information about the container that your Elm program lives in.
When you embed Elm in a `<div>` it gives the dimensions of the container, not
the whole window.

# Dimensions
@docs dimensions, width, height

-}

import Basics (fst,snd)
import Native.Window
import Varying
import Varying (Varying)


{-| The current width and height of the window (i.e. the area viewable to the
user, not including scroll bars). -}
dimensions : Varying (Int,Int)
dimensions =
  Native.Window.dimensions


{-| The current width of the window. -}
width : Varying Int
width =
  Varying.map fst dimensions


{-| The current height of the window. -}
height : Varying Int
height =
  Varying.map snd dimensions