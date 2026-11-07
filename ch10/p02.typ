#import "@local/elektroedde:0.1.0": *
#show: problem

=

#solution[
  a)
  The potentials are given as
  $
    V = 0, vb(A) = cases((mu_0 k)/(4 c)(c t - abs(x))^2 vu(z) &"for" abs(x) < c t, vb(0) &"for" abs(x) > c t)
  $
  with the fields
  $
    vb(E) = -(mu_0 k)/2 (c t - abs(x)) vu(z)\
    vb(B) = (mu_0 k)/(2 c) (c t - abs(x))vu(y)
  $

  At time $t_1$, the vector magnetic potential is $vb(0)$ because
  $
    abs(x) >= c t_1 "gives" abs(d) >= c d/c arrow d >= d
  $
  and thus no energy in the box at this time.

  At time $t_2$ however, the potential has reached the entire box

  The energy is given by
  $
    u = 1/2(epsilon_0 E^2 + 1/mu_0 B^2)
  $
  and since 
  $
  B = E/c, c^2 = 1/(mu_0 epsilon_0)
  $
  we get 
  $
    u = 1/2(epsilon_0 + 1/(mu_0 c^2))E^2 = epsilon_0 E^2
  $
  The electric field squared at time $t_2$ is
  $
    E^2 = (mu_0^2 k^2)/4 (c t_2 - abs(x))^2 = (mu_0^2 k^2)/4 (d + h - x)^2 space space space "("x "always positive)"
  $
  Integrating over the rectangular box in the $vu(x)$-direction (since the electric field is constant in $vu(y)$ and $vu(z)$, so we multiply the result by $w l$), we get 
  $
    l w integral_d^(d+h) epsilon_0 E^2 dd(x) = (epsilon_0 mu_0^2 k^2 l w)/4 integral_d^(d+h) (d + h - x)^2 dd(x) = (epsilon_0 mu_0^2 k^2 l w)/4 [-(d+h - x)^3/3]_d^(d+h)=\
  = (epsilon_0 mu_0^2 k^2 l w h^3)/(12)

  $

  b) The Poynting vector is given by
  $
    vb(S) = 1/mu_0 vb(E) times vb(B)
  $ 
  With $vb(E) = E (-vu(z))$ and $vb(B) = B vu(y)$, the cross product becomes
  $
    E B vu(x)
  $
  which gives
  $
    vb(S) = 1/mu_0 (mu_0^2 k^2)/(4 c) vu(x) = (mu_0 k^2)/(4 c) (c t - abs(x))^2vu(x)
  $

  The energy flowing in is the integral of the Poynting vector at $x = d$

  $
  P = surfint(vb(S)) = (mu_0 k^2 l w)/(4 c) (c t - d)^2
  $

  c)

$
  

  W = integral_(d\/c)^((d+h)\/c) P dd(t) = (mu_0 k^2 l w)/(4 c) integral_(d\/c)^((d+h)\/c) (c t - d)^2 dd(t) =\
  = (mu_0 k^2 l w)/(4 c) [((c t - d)^3)/(3c)]_(d\/c)^((d+h)\/c) = (mu_0 k^2 l w)/(4 c) (((d + h - d)^3)/(3c) - ((d-d)^3)/(3 c)) = \
  = (mu_0 k^2 l w h^3)/(12 c^2) = (epsilon_0 mu_0^2 k^2 l w h^3)/12
  $
]