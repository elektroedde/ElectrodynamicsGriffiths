#import "../template.typ": *

=
Divergence-less fields

(a) $nabla dot bold(F) = 0$ everywhere.

(b) $integral bold(F) dot dif bold(a)$ is independent of surface, for any given boundary line.

(c) $integral.cont bold(F) dot dif bold(a) = 0$ for any closed surface.

(d) $bold(F)$ is the curl of some vector function: $bold(F) = nabla times bold(A)$

Show (d) $arrow.double$ (a), (a) $arrow.double$ (c), (c) $arrow.double$ (b), (b) $arrow.double$ (c), and (c) $arrow.double$ (a).

#solution[
  (d) $arrow.double$ (a)
  $
    nabla dot (nabla times bold(A)) = nabla dot (curl(A)) = \
    = pdv(A_z,y,x,deg:2) - pdv(A_y, z, x, deg: 2)
    + pdv(A_x,z,y,deg:2) - pdv(A_z, x, y, deg: 2)
    + pdv(A_y,x,z,deg:2) - pdv(A_x, y, z, deg: 2) = \
    = (pdv(A_z,y,x,deg:2) - pdv(A_z, x, y, deg: 2)) + (pdv(A_x,z,y,deg:2)-pdv(A_x, y, z, deg: 2)) + (pdv(A_y,x,z,deg:2)-pdv(A_y, z, x, deg: 2)) = 0 "  "square
  $
  
  (a) $arrow.double$ (c)
  $
    "Divergence Theorem"\
    volint(nabla dot bold(F)) = surfintc(bold(F)) = 0 "  "square
  $
   
  (c) $arrow.double$ (b) For a boundary line that splits a closed surface into two...

    
  (b) $arrow.double$ (c), same as (c) $arrow.double$ (b), but reversed $square$
  
   
  (c) $arrow.double$ (a), same as (a) $arrow.double$ (c) (Stokes' Theorem) $square$

]