#import "@local/elektroedde:0.1.0": *
#show: problem

=
Prove that the divergence of a curl is always zero. 

#solution[
  For a vector function $bold(v)$, show
  $
    nabla dot (nabla times bold(v)) = 0
  $

  Using the definition of the divergence and curl:
   $
    nabla dot bold(v) = pdv(v_x, x) + pdv(v_y, y) + pdv(v_z, z) = 0 \
    nabla times bold(v) = (pdv(v_z, y) - pdv(v_y, z))bh(x) + (pdv(v_x, z) - pdv(v_z, x))bh(y) + (pdv(v_y, x) - pdv(v_x,y))bh(z)
  $
  the result is 
  $
    nabla dot (nabla times bold(v)) = pdv(, x)(pdv(v_z, y) - pdv(v_y, z)) + pdv(, y)(pdv(v_x, z) - pdv(v_z, x)) + pdv(, z)(pdv(v_y, x) - pdv(v_x,y)) = \
    = pdv(v_z, x, y, deg: 2) - pdv(v_y, x, z, deg: 2) + pdv(v_x, y, z, deg: 2) - pdv(v_z, y, x, deg: 2) + pdv(v_y, z, x, deg: 2) - pdv(v_x, z, y, deg: 2) = \
    = underbrace(pdv(v_z, x, y, deg: 2) - pdv(v_z, y, x, deg: 2), = 0)
     + underbrace(pdv(v_x, y, z, deg: 2) - pdv(v_x, z, y, deg: 2), =0) + underbrace(pdv(v_y, z, x, deg: 2)- pdv(v_y, x, z, deg: 2), =0)
  $
  since the symmetry of second derivatives ensures that
  $
    pdv(, x, y, deg:2) = pdv(, y, x, deg:2)
  $

]