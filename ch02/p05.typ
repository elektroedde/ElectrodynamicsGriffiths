#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field a distance $z$ above the center of a circular loop of radius $r$ that carries a uniform line charge $lambda$.

#solution[
  Using cylindrical coordinates, the separation vector $bscrr$ is
  $
    bscrr = r vu(r) + z vu(z) = ["symmetry"] = z vu(z)
  $
  and the magnitude
  $
    scrr = sqrt(r^2 + z^2)
  $
  gives
  $
    hscrr = z/sqrt(r^2 + z^2) vu(z)
  $

  The circular loop at radius $r$ has the integral form $integral_0^(2 pi) r dd(theta)$. The integral that gives the resulting electric field is
  $
    vb(E) = 1/(4 pi epsilon_0) integral_0^(2 pi) (lambda z vu(z))/sqrt(r^2 + z^2)^3 r dd(theta) = ans((lambda z r)/(2 epsilon_0 sqrt(r^2+z^2)^3) vu(z))
  $
]