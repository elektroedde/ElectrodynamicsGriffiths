#import "../template.typ": *
#show: problem

=
Calculate the divergence of the following vector functions:

(a) $bold(v)_a = x^2 bh(x) + 3x z^2 bh(y) - 2x z bh(z)$

(b) $bold(v)_b = x y bh(x) + 2 y z bh(y) + 3 x z bh(z)$

(c) $bold(v)_c = y^2bh(x) + (2x y + z^2) bh(y) + 2y z bh(z)$

#solution[
  The divergence of a vector $bold(v)$ is defined as 
  $
    nabla dot bold(v) = pdv(v_x, x) + pdv(v_y, y) + pdv(v_z, z)
  $

  $
    &"(a)" nabla dot bold(v)_a = 2x - 2x = 0\
    &"(b)" nabla dot bold(v)_b = y + 2z + 3x\
    &"(c)" nabla dot bold(v)_c = 2x + 2y

  $


]