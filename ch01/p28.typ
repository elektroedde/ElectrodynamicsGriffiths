#import "@local/elektroedde:0.1.0": *
#show: problem

=
Prove that the curl of a gradient is always zero.

#solution[
  For a function T, show
  $
    nabla times (nabla T) = 0
  $

  Using the definitions of the gradient and curl
  $
    nabla T = pdv(T, x)bh(x) + pdv(T,y)bh(y) + pdv(T,z)bh(z) \
    nabla times bold(v) = (pdv(v_z, y) - pdv(v_y, z))bh(x) + (pdv(v_x, z) - pdv(v_z, x))bh(y) + (pdv(v_y, x) - pdv(v_x,y))bh(z)
  $

  results in 
  $
    nabla times (nabla T) = underbrace((pdv(T, y, z, deg:2) - pdv(T, z, y, deg:2)), =0)bh(x)
    + underbrace((pdv(T, z, x, deg:2) - pdv(T, x, z, deg:2)), =0)bh(y) 
    + underbrace((pdv(T, x, y, deg:2) - pdv(T,y, x, deg:2)), =0)bh(z)
  $

  since the symmetry of second derivatives ensures that
  $
    pdv(, x, y, deg:2) = pdv(, y, x, deg:2)
  $
]