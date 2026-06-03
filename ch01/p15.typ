#import "@local/elektroedde:0.1.0": *
#show: problem

=
Calculate the divergence of the following vector functions:

(a) $bold(v)_a = x^2 vu(x) + 3x z^2 vu(y) - 2x z vu(z)$

(b) $bold(v)_b = x y vu(x) + 2 y z vu(y) + 3 x z vu(z)$

(c) $bold(v)_c = y^2vu(x) + (2x y + z^2) vu(y) + 2y z vu(z)$

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