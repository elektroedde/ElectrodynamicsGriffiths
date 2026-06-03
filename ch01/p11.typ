#import "@local/elektroedde:0.1.0": *
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
    nabla T = pdv(T, x) vu(x) + pdv(T, y) vu(y) + pdv(T, z) vu(z) 
  $
  This results in
  $
    &"(a)" 2x vu(x) + 3y^2 vu(y) + 4z^3 vu(z) \
    &"(b)" 2x y^3 z^4 vu(x) + 3x^2 y^2 z^4 vu(y) + 4x^2 y^3 z^3 vu(z) \
    &"(c)" e^x (sin(y) ln(z) vu(x) + cos(y)ln(z)vu(y) + sin(y)/z vu(z))
  $
]
