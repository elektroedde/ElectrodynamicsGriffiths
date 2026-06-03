#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Let $bold(F)_1 = x^2 vu(z)$ and $bold(F)_2 = x vu(x) + y vu(y) + z vu(z)$. Calculate the divergence and curl of $bold(F)_1$ and $bold(F)_2$. Which one can be written as the gradient of a scalar? Find a scalar potential that does the job. Which one can be written as the curl of a vector? Find a suitable vector potential.

(b) Show that $bold(F)_3 = y z vu(x) + z x vu(y) + x y vu(z)$ can be written both as the gradient of a scalar and as the curl of a vector. Find scalar and vector potentials for this function.

#solution[
  (a) 
  $
    &nabla dot bold(F)_1 &&= 0 \
    &nabla dot bold(F)_2 &&= 3 \
    &nabla times bold(F)_1 &&= -2x vu(y)\
    &nabla times bold(F)_2 &&= 0
  $

  This means that 
  $
    &bold(F)_1 = &&nabla times bold(A) \
    &bold(F)_2 = - &&nabla V
  $

  To find $bold(A)$, the requirements are
  $
    curl(A) = x^2 vu(z) \
    arrow.b\
    (pdv(A_z, y)-pdv(A_y, z)) = (pdv(A_x, z)-pdv(A_z, x)) = 0", " (pdv(A_y, x)-pdv(A_x, y)) = x^2
  $
  One of the vectors that satisfy this is 
  $
    ans(bold(A) = (-x^2 y)/2 vu(x) + x^3/6 vu(y))
  $


  To find V, the requirements are
  $
    -(grad(V)) = x vu(x) + y vu(y) + z vu(z) \
    arrow.b\
    cases(-pdv(V, x) = x, -pdv(V, y) = y, -pdv(V,z) = z)
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
    -(grad(V)) = y z vu(x) + x z vu(y) + x y vu(z)
  $
  which is satisfied by, for example
  $
    ans(V = -x y z )
  $
  The conditions for the vector are
  $
    curl(A) = y z vu(x) + x z vu(y) + x y vu(z)
  $
  which is satisfied by, for example 
  $
    ans(bold(A) = (x z^2)/2vu(x) + (y x^2)/2vu(y) + (z y^2)/2vu(z))
  $
]