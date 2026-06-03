#import "@local/elektroedde:0.1.0": *
#show: problem

=
Calculate the curls of the vector functions

(a) $bold(v)_a = x^2 vu(x) + 3x z^2 vu(y) - 2x z vu(z)$

(b) $bold(v)_b = x y vu(x) + 2 y z vu(y) + 3 x z vu(z)$

(c) $bold(v)_c = y^2vu(x) + (2x y + z^2) vu(y) + 2y z vu(z)$

#solution[
The definition of the curl of a vector function $bold(v)$ is
$
  nabla times bold(v) = mat(delim: "|", vu(x), vu(y), vu(z);pdv(,x), pdv(,y), pdv(,z); v_x, v_y, v_z) = (pdv(v_z, y) - pdv(v_y, z))vu(x) + (pdv(v_x, z) - pdv(v_z, x))vu(y) + (pdv(v_y, x) - pdv(v_x,y))vu(z)
$
This gives
$
  &"(a)" nabla times bold(v)_a = -6x z vu(x) + 2z vu(y) + 3z^2 vu(z)\
  &"(b)" nabla times bold(v)_b = -2y vu(x) + -3z vu(y) + -x vu(z)\
  &"(c)" nabla times bold(v)_c = 0\

$

]