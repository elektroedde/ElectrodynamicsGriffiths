#import "@local/elektroedde:0.1.0": *

#let eq30 = neq(
$
  vec(ol(A)_y,ol(A)_z) = mat(cos phi.alt, sin phi.alt;-sin phi.alt, cos phi.alt) vec(A_y, A_z)
$
)