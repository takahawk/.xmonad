import XMonad
import XMonad.Hooks.FadeInactive
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed


myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
  where fadeAmount = 0.7

main = do
	xmonad $ def { modMask           = mod4Mask,
                       terminal          = "terminology",
                       borderWidth       = 0,
                       logHook           = myLogHook }
