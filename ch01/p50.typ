#import "../template.typ": *
#show: problem

=
(a) Let $bold(F)_1 = x^2 bh(z)$ and $bold(F)_2 = x bh(x) + y bh(y) + z bh(z)$. Calculate the divergence and curl of $bold(F)_1$ and $bold(F)_2$. Which one can be written as the gradient of a scalar? Find a scalar potential that does the job. Which one can be written as the curl of a vector? Find a suitable vector potential.

(b) Show that $bold(F)_3 = y z bh(x) + z x bh(y) + x y bh(z)$ can be written both as the gradient of a scalar and as the curl of a vector. Find scalar and vector potentials for this function.

#solution[
  (a) 
  $
    &nabla dot bold(F)_1 &&= 0 \
    &nabla dot bold(F)_2 &&= 3 \
    &nabla times bold(F)_1 &&= -2x bh(y)\
    &nabla times bold(F)_2 &&= 0
  $

  This means that 
  $
    &bold(F)_1 = &&nabla times bold(A) \
    &bold(F)_2 = - &&nabla V
  $

  To find $bold(A)$, the requirements are
  $
    curl(A) = x^2 bh(z) \
    arrow.b\
    (dvp(A_z, y)-dvp(A_y, z)) = (dvp(A_x, z)-dvp(A_z, x)) = 0", " (dvp(A_y, x)-dvp(A_x, y)) = x^2
  $
  One of the vectors that satisfy this is 
  $
    ans(bold(A) = (-x^2 y)/2 bh(x) + x^3/6 bh(y))
  $


  To find V, the requirements are
  $
    -(grad(V)) = x bh(x) + y bh(y) + z bh(z) \
    arrow.b\
    cases(-dvp(V, x) = x, -dvp(V, y) = y, -dvp(V,z) = z)
  $
  One of the scalars that satisfy this is 
  $
    ans(V = -1/2(x^2 + y^2 + z^2))
  $

  (b)
  The divergence and curl of $bold(F)_3$ is 
  $
    nabla dot bold(F)_3 = 0 \
    nabla times bold(F)_3 = 0
  $
  This means that $bold(F)_3$ can be written both as the gradient of a scalar, and as the curl of a vector.
  $
    &bold(F)_3 = -nabla V \
    &bold(F)_3 = nabla times bold(A)
  $ 
  The conditions to be met are then
  $
    -(grad(V)) = y z bh(x) + x z bh(y) + x y bh(z)
  $
  which is satisfied by, for example
  $
    ans(V = -x y z )
  $
  The conditions for the vector are
  $
    curl(A) = y z bh(x) + x z bh(y) + x y bh(z)
  $
  which is satisfied by, for example 
  $
    ans(bold(A) = (x z^2)/2bh(x) + (y x^2)/2bh(y) + (z y^2)/2bh(z))
  $
]