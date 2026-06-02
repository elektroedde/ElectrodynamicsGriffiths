#import "../template.typ": *
#show: problem

=
Find the gradients of the following functions:
$
  &"(a)" f(x, y, z) = x^2 + y^3 + z^4 \
  &"(b)" f(x, y, z) = x^2 y^3 z^4 \
  &"(c)" f(x, y, z) = e^x sin(y) ln(z)
$

#solution[
  The gradient of a function $T$ is defined as 
  $
    nabla T = pdv(T, x) bh(x) + pdv(T, y) bh(y) + pdv(T, z) bh(z) 
  $
  This results in
  $
    &"(a)" 2x bh(x) + 3y^2 bh(y) + 4z^3 bh(z) \
    &"(b)" 2x y^3 z^4 bh(x) + 3x^2 y^2 z^4 bh(y) + 4x^2 y^3 z^3 bh(z) \
    &"(c)" e^x (sin(y) ln(z) bh(x) + cos(y)ln(z)bh(y) + sin(y)/z bh(z))
  $
]
