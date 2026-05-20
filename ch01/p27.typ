#import "../template.typ": *

=
Prove that the divergence of a curl is always zero. 

#solution[
  For a vector function $bold(v)$, show
  $
    nabla dot (nabla times bold(v)) = 0
  $

  Using the definition of the divergence and curl:
   $
    nabla dot bold(v) = dvp(v_x, x) + dvp(v_y, y) + dvp(v_z, z) = 0 \
    nabla times bold(v) = (dvp(v_z, y) - dvp(v_y, z))bh(x) + (dvp(v_x, z) - dvp(v_z, x))bh(y) + (dvp(v_y, x) - dvp(v_x,y))bh(z)
  $
  the result is 
  $
    nabla dot (nabla times bold(v)) = dvp(, x)(dvp(v_z, y) - dvp(v_y, z)) + dvp(, y)(dvp(v_x, z) - dvp(v_z, x)) + dvp(, z)(dvp(v_y, x) - dvp(v_x,y)) = \
    = dvp(v_z, x, y, deg: 2) - dvp(v_y, x, z, deg: 2) + dvp(v_x, y, z, deg: 2) - dvp(v_z, y, x, deg: 2) + dvp(v_y, z, x, deg: 2) - dvp(v_x, z, y, deg: 2) = \
    = underbrace(dvp(v_z, x, y, deg: 2) - dvp(v_z, y, x, deg: 2), = 0)
     + underbrace(dvp(v_x, y, z, deg: 2) - dvp(v_x, z, y, deg: 2), =0) + underbrace(dvp(v_y, z, x, deg: 2)- dvp(v_y, x, z, deg: 2), =0)
  $
  since the symmetry of second derivatives ensures that
  $
    dvp(, x, y, deg:2) = dvp(, y, x, deg:2)
  $

]