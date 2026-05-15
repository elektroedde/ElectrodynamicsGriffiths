#import "../template.typ": *

=
Calculate the Laplacian of the following functions:

$"(a)" T_a = x^2 + 2x y + 3z + 4$

$"(b)" T_b = sin x sin y sin z$

$"(c)" T_c = e^(-5x)sin 4y cos 3z$

$"(d)" bold(v) = x^2 bh(x) + 3x z^2 bh(y) - 2x z bh(z)$

#solution[
  The Laplacian of a function $T$ is defined as
  $
    nabla^2 T = dvp(T, x, deg: 2) + dvp(T, y, deg: 2) + dvp(T, z, deg: 2)
  $
  and the Laplacian of a vector $bold(v)$ is defined as 
  $
    nabla^2 bold(v) = (nabla^2 v_x)bh(x) + (nabla^2 v_y)bh(y) + (nabla^2 v_z)bh(z)
  $

  Using this, the result is

  $"(a)" nabla^2 T_a = 2$

  $"(b)" nabla^2 T_b = -3 sin x sin y sin z$

  $"(c)" nabla^2 T_c = e^(-5x) sin 4y cos 3z (25 - 16 - 9) = 0$

  $"(d)" nabla^2 bold(v) = 2bh(x) + 6x bh(y)$
  
]
