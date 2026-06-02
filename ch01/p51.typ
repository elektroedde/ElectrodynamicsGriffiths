#import "../template.typ": *

=
Curl-less fields:

(a) $nabla times bold(F) = 0$ everywhere.

(b) $integral_a^b bold(F) dot dif bold(l)$ is independent of path, for any given end points.

(c) $integral.cont bold(F) dot dif bold(l) = 0$ for any closed loop.  

(d) $bold(F)$ is the gradient of some scalar function: $bold(F) = - nabla V$


Show (d) $arrow.double$ (a), (a) $arrow.double$ (c), (c) $arrow.double$ (b), (b) $arrow.double$ (c), and (c) $arrow.double$ (a).

#solution[
  (d) $arrow.double$ (a):
  $
    nabla times (- nabla V) = nabla times (pdv(V, x)bh(x) + pdv(V, y)bh(y) + pdv(V,z)bh(z)) = \ 
    = curlc(pdv(V, x), pdv(V,y), pdv(V,z)) = \
    = (pdv(V, y,z, deg:2) - pdv(V, z, y, deg:2))bh(x) + (pdv(V, z,x, deg:2) - pdv(V, x, z, deg:2))bh(y) + (pdv(V, x,y, deg:2) - pdv(V, y, x, deg:2))bh(z) = 0 " "square
  $

  (a) $arrow.double$ (c)
  $
    "Stokes' Theorem"\
    surfint((nabla times bold(F))) = lineintc(bold(F)) = 0 " "square
  $
 
  (c) $arrow.double$ (b)
  $
    integral_(a_"Path 1")^b bold(F) dot dif bold(l) + integral_(b_"Path 2")^a bold(F) dot dif bold(l) = lineintc(bold(F)) = 0\
    arrow.b\
    integral_a^b bold(F) dot dif bold(l) + integral_b^a bold(F) dot dif bold(l) arrow integral_a^b bold(F) dot dif bold(l) - integral_a^b bold(F) dot dif bold(l) arrow integral_(a_"Path 1")^b bold(F) dot dif bold(l) = integral_(a_"Path 2")^b bold(F) dot dif bold(l) " "square
  $
  #figure(image("p51_diagram.png", width: 50%))
  
  (b) $arrow.double$ (c), same as (c) $arrow.double$ (b), but reversed $square$
  
   
  (c) $arrow.double$ (a), same as (a) $arrow.double$ (c) (Stokes' Theorem) $square$

]