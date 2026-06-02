#import "../template.typ": *
#show: problem

=
$
  &"(ii) " &&nabla(bold(A) dot bold(B)) = bold(A) times (nabla times bold(B)) + bold(B) times (nabla times bold(A)) + (bold(A) dot nabla)bold(B) + (bold(B) dot nabla) bold(A)  \
  &"(iv) " &&nabla dot (bold(A) times bold(B)) = bold(B) dot (nabla times bold(A)) - bold(A) dot (nabla times bold(B)) \
  &"(vi) " &&nabla times (bold(A) times bold(B)) = (bold(B) dot nabla)bold(A) - (bold(A) dot nabla)bold(B) + bold(A)(nabla dot bold(B)) - bold(B)(nabla dot bold(A))\

$
(a) Check product rule (iv) for the functions
$
  bold(A) = x bh(x) + 2y bh(y) + 3z bh(z) ", " bold(B) = 3y bh(x) - 2x bh(y)
$

(b) Do the same for product rule (ii).

(c) Do the same for rule (vi).

#solution[
(a) Start with LHS:
$
  nabla dot (bold(A) times bold(B)) = nabla dot ((A_y B_z - A_z B_y)bh(x) + (A_z B_x - A_x B_z)bh(y) + (A_x B_y - A_y B_x)bh(z)) = \
  = dvp(, x)(A_y B_z - A_z B_y) + dvp(,y)(A_z B_x - A_x B_z) + dvp(, z)(A_x B_y - A_y B_x) =\
  = dvp(, x) (6x z) + dvp(, y)(9z y) + dvp(, z)(-2x^2 - 6y^2) = 6z + 9z = ans(15z)
$

RHS:
$
  underbrace(bold(B) dot (nabla times bold(A)), (1)) - underbrace(bold(A) dot (nabla times bold(B)), (2)) =\
  "(1)" bold(B) dot [curl(A)] =\
  = B_x (dvp(A_z, y) - dvp(A_y, z)) + B_y (dvp(A_x, z) - dvp(A_z, x)) + B_z (dvp(A_y,x) - dvp(A_x, y)) = 0\


  "(2)" bold(A) dot [curl(B)] =\
  = A_x (dvp(B_z, y) - dvp(B_y, z)) + A_y (dvp(B_x, z) - dvp(B_z, x)) + A_z (dvp(B_y,x) - dvp(B_x, y)) =\
  = 3z(-5) = -15 z \
  \
  "(1)" - "(2)" = 0 - (-15z) = ans(15z)
$

(b) LHS:
$
  nabla(bold(A) dot bold(B)) = nabla(A_x B_x + A_y B_y + A_z B_z) = nabla(3x y  -4x y) = \
  = dvp((-x y), x)bh(x) + dvp((-x y), y)bh(y) = ans(-y bh(x) - x bh(y))
$

RHS:
$
  underbrace(bold(A) times (nabla times bold(B)), (1)) + underbrace(bold(B) times (nabla times bold(A)), (2)) + underbrace((bold(A) dot nabla)bold(B), (3)) + underbrace((bold(B) dot nabla) bold(A), (4))\
  \
  "(1)" bold(A) times [curl(B)] =\
  = (x bh(x) + 2y bh(y) + 3z bh(z)) times (-5bh(z)) =  -10y bh(x) + 5x bh(y)\
  \
  "(2)" bold(B) times [curl(A)] = 0\
  \
  "(3)" (bold(A) dot nabla)bold(B) = \
  =dotnabla(A, B) = \
  = 6 y bh(x) - 2x bh(y)\
  \
  "(4)" (bold(B) dot nabla)bold(A) = \
  =dotnabla(B, A) =\
  = 3y bh(x)  -4x bh(y) \
  \
  \
  "(1)" + "(2)" + "(3)" + "(4)" = (-10y + 6y + 3y)bh(x) + (5x - 2x - 4x)bh(y) = ans(-y bh(x) - x bh(y))
$

(c) LHS:
$
  nabla times (bold(A) times bold(B)) = nabla times [cross(A, B)] = \
  =nabla times [ 6x z bh(x) + 9 y z bh(y) - (2x^2 + 6y^2) bh(z) ] = nabla times bold(C) =\
  = curl(C) = \
  = (-12y-9y)bh(x) + (6x + 4x)bh(y) = ans(-21y bh(x) + 10x bh(y))
$

RHS: 
From (b) it was calculated that $(bold(A) dot nabla)bold(B) = 6y bh(x) - 2x bh(y)$ and $(bold(B) dot nabla)bold(A) = 3y bh(x) - 4x bh(y)$. The remaining parts of (vi) RHS is
$
  bold(A)underbrace((nabla dot bold(B)), =0) - bold(B)underbrace((nabla dot bold(A)), =6) = -6bold(B) = -18y bh(x) +12x bh(y)
$
Summing it all up according to (vi), the result is 
$
  (3y - 6y - 18y)bh(x) + (-4x + 2x + 12x)bh(y) = ans(-21y bh(x) + 10x bh(y))
$

]