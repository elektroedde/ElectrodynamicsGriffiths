#import "../template.typ": *
#show: problem

=
Construct a vector function that has a zero divergence and zero curl everywhere.

#solution[
  The vector function $bold(R)$ should satisfy
  $
    nabla dot bold(R) = 0\
    nabla times bold(R) = 0
  $
  Using the definitions of the divergence and curl, the conditions are
  $
    nabla dot bold(R) = dvp(R_x, x) + dvp(R_y, y) + dvp(R_z, z) = 0 \
    nabla times bold(R) = (dvp(R_z, y) - dvp(R_y, z))bh(x) + (dvp(R_x, z) - dvp(R_z, x))bh(y) + (dvp(R_y, x) - dvp(R_x,y))bh(z)
  $

  Want to fulfill:
  $
    dvp(R_z,y) = dvp(R_y, z) \
    dvp(R_x, z) = dvp(R_z, x) \
    dvp(R_y, x) = dvp(R_x, y)
  $

  An example is $bold(R) = y z bh(x) + x z bh(y) + x y bh(z)$

]