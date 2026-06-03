#import "@local/elektroedde:0.1.0": *
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
    nabla times bold(R) = (pdv(R_z, y) - pdv(R_y, z))vu(x) + (pdv(R_x, z) - pdv(R_z, x))vu(y) + (pdv(R_y, x) - pdv(R_x,y))vu(z)
  $

  Want to fulfill:
  $
    pdv(R_z,y) = pdv(R_y, z) \
    pdv(R_x, z) = pdv(R_z, x) \
    pdv(R_y, x) = pdv(R_x, y)
  $

  An example is $bold(R) = y z vu(x) + x z vu(y) + x y vu(z)$

]