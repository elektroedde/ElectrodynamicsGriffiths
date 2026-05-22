#import "../template.typ": *

=
Calculate the volume integral of the function $T = z^2$ over the tetrahedron with corners at $(0,0,0)", "(1,0,0)", "(0,1,0)", and" (0,0,1)$.

#solution[
The boundaries are

$x: 0 arrow 1-y-z$

$y: 0 arrow 1-z$

$z: 0 arrow 1$
  $
    integral_0^1 z^2 (integral_0^(1-z)(integral_0^(1-y-z) dif x) dif y) dif z = \
    = integral_0^1 z^2 (integral_0^(1-z) (1-y-z) dif y) dif z =\
   = integral_0^1  1/2 (z^2-2z^3 + z^4) dif z\
    = 1/2 (1/3 - 1/2 + 1/5) = 1/2 (10/30 - 15/30 + 6/30) = 1/60

  $

]