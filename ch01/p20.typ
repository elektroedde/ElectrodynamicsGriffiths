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
    nabla dot bold(R) = pdv(R_x, x) + pdv(R_y, y) + pdv(R_z, z) = 0 \
    nabla times bold(R) = (pdv(R_z, y) - pdv(R_y, z))bh(x) + (pdv(R_x, z) - pdv(R_z, x))bh(y) + (pdv(R_y, x) - pdv(R_x,y))bh(z)
  $

  Want to fulfill:
  $
    pdv(R_z,y) = pdv(R_y, z) \
    pdv(R_x, z) = pdv(R_z, x) \
    pdv(R_y, x) = pdv(R_x, y)
  $

  An example is $bold(R) = y z bh(x) + x z bh(y) + x y bh(z)$

]