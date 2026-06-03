#import "@local/elektroedde:0.1.0": *
#show: problem

=
Calculate the curls of the vector functions

(a) $bold(v)_a = x^2 bh(x) + 3x z^2 bh(y) - 2x z bh(z)$

(b) $bold(v)_b = x y bh(x) + 2 y z bh(y) + 3 x z bh(z)$

(c) $bold(v)_c = y^2bh(x) + (2x y + z^2) bh(y) + 2y z bh(z)$

#solution[
The definition of the curl of a vector function $bold(v)$ is
$
  nabla times bold(v) = mat(delim: "|", bh(x), bh(y), bh(z);pdv(,x), pdv(,y), pdv(,z); v_x, v_y, v_z) = (pdv(v_z, y) - pdv(v_y, z))bh(x) + (pdv(v_x, z) - pdv(v_z, x))bh(y) + (pdv(v_y, x) - pdv(v_x,y))bh(z)
$
This gives
$
  &"(a)" nabla times bold(v)_a = -6x z bh(x) + 2z bh(y) + 3z^2 bh(z)\
  &"(b)" nabla times bold(v)_b = -2y bh(x) + -3z bh(y) + -x bh(z)\
  &"(c)" nabla times bold(v)_c = 0\

$

]