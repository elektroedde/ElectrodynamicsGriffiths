#import "@local/elektroedde:0.1.0": *
#show: problem

=
A sailboat is manufactured so that the mast leans at an angle $ol(theta)$ with respect to the deck. An observer standing on a dock sees the boat go by at speed $v$. What angle does this observer say the mast makes?

#solution[
  The direction of the speed is Lorentz contracted by $1/gamma$. The horizontal and vertical components of the mast is 
  $
    ol(x) = ol(l) cos(ol(theta))cm ol(y) = ol(l) sin(ol(theta))
  $
  Transforming these components with regard to the velocity gives
  $
    x = l cos(theta)/gamma cm y = l sin(theta)
  $
  This gives
  $
    ol(y)/ol(x) = y / x\
    arrow.b\
    ans(tan(ol(theta)) = gamma tan(theta))
  $
]