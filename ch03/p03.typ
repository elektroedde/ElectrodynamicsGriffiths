#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the general solution to Laplace's equation in spherical coordinates, for the case where $V$ depends only on $r$. Do the same for cylindrical coordinates, assuming $V$ depends only on $s$.

#solution[
  $
    laplacian V = 0
  $
  The laplacian in spherical coordinates with only $r$-dependence is
  $
    laplacian = 1/r^2 pdv(,r)(r^2 pdv(,r))\
    arrow.b\
    laplacian V = 1/r^2 pdv(,r)(r^2 pdv(V,r)) = 1/r^2 (2r pdv(V,r) + r^2 pdv(V,r,2)) = pdv(V,r,2) + 2/r pdv(V,r) = 0
  $
  This is Bessel diff.eq with $lambda = 0, l = 0 $
  $
    V = a + b/r\
  $

  For the cylindrical part, the laplacian is
  $
    laplacian V = 1/s pdv(,s)(s pdv(V,s)) = "[multiply by s and integrate]" = A\
    s pdv(V,s) = A arrow pdv(V,s) = A/s arrow V = A ln(s) + B
  $
]