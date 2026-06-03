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
    nabla T = pdv(T, x)vu(x) + pdv(T,y)vu(y) + pdv(T,z)vu(z) \
    nabla times bold(v) = (pdv(v_z, y) - pdv(v_y, z))vu(x) + (pdv(v_x, z) - pdv(v_z, x))vu(y) + (pdv(v_y, x) - pdv(v_x,y))vu(z)
  $

  results in 
  $
    nabla times (nabla T) = underbrace((pdv(T, y, z, deg:2) - pdv(T, z, y, deg:2)), =0)vu(x)
    + underbrace((pdv(T, z, x, deg:2) - pdv(T, x, z, deg:2)), =0)vu(y) 
    + underbrace((pdv(T, x, y, deg:2) - pdv(T,y, x, deg:2)), =0)vu(z)
  $

  since the symmetry of second derivatives ensures that
  $
    pdv(, x, y, deg:2) = pdv(, y, x, deg:2)
  $
]