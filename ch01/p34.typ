#import "../template.typ": *
#show: problem

=
Test Stokes' theorem for the function $bold(v) = (x y)bh(x) + (2 y z)bh(y) + (3x z)bh(z)$, using the triangular area with points $(0,0,0)"," (0,1,0)","(0,0,1)$.

#solution[
  Stokes's theorem
  $
    integral_S (nabla times bold(v)) dot dif bold(a) = integral.cont_P bold(v) dot dif bold(l)
  $

  $
    nabla times bold(v) = (-2y)bh(x) + (-3z)bh(y) + (-x)bh(z) \ 
    dif bold(a) = dif y dif z bh(x) \
    y: 0 arrow 2-z \
    z: 0 arrow 2 \
    \
    integral_0^2 (integral_0^(2-z)-2y dif y) dif z = \
    = integral_0^2 [-y^2]_0^(2-z) dif z =integral_0^2 (-4 + 4z - z^2) = -8 + 8 - 8/3 = ans(-8/3)
  $

  Line 1:
  $
    (0,0,0) arrow (0,2,0) \
    dif bold(l) = dif x bh(x) \
    x = z = 0 \
    integral_0^2 0 dif x = 0
  $

  Line 2:
  $
    (0,2,0) arrow (0,0,2) \
    bold(r)(t) = (0, 2-t, t)"," t: 0 arrow 2 \
    dif bold(l) = bold(r)'(t) dif t \
    integral_0^2 (0,2(2-t)(t),0) dot (0, -1, 1) dif t = integral_0^2 -4t + 2t^2 dif t = -2t^2 + 2/3 t^3 = -8 + 16/3 =-8/3
  $

  Line 3:
  $
    (0,0,2) arrow (0,0,0) \
    dif bold(l) = dif z bh(z) \
    y = x = 0 \
    integral_2^0 0 dif z = 0
  $

  All line integrals combined gives $ans(-8/3)$
  
]