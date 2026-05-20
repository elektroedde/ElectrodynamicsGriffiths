#import "../template.typ": *

=
Prove that the curl of a gradient is always zero.

#solution[
  For a function T, show
  $
    nabla times (nabla T) = 0
  $

  Using the definitions of the gradient and curl
  $
    nabla T = dvp(T, x)bh(x) + dvp(T,y)bh(y) + dvp(T,z)bh(z) \
    nabla times bold(v) = (dvp(v_z, y) - dvp(v_y, z))bh(x) + (dvp(v_x, z) - dvp(v_z, x))bh(y) + (dvp(v_y, x) - dvp(v_x,y))bh(z)
  $

  results in 
  $
    nabla times (nabla T) = underbrace((dvp(T, y, z, deg:2) - dvp(T, z, y, deg:2)), =0)bh(x)
    + underbrace((dvp(T, z, x, deg:2) - dvp(T, x, z, deg:2)), =0)bh(y) 
    + underbrace((dvp(T, x, y, deg:2) - dvp(T,y, x, deg:2)), =0)bh(z)
  $

  since the symmetry of second derivatives ensures that
  $
    dvp(, x, y, deg:2) = dvp(, y, x, deg:2)
  $
]