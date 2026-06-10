#import "@local/elektroedde:0.1.0": *
#show: problem

=
Suppose the electric field in some region is found to be $vb(E) = k r^3 vb(r)$, in spherical coordinates ($k$ is some constant).

(a) Find the charge density $rho$.

(b) Find the total charge contained in a sphere of radius $R$, centered at the origin. (Do it two different ways.)

#solution[
  (a) Gauss's law in differential form is
  $
  div vb(E) = 1/epsilon_0 rho arrow rho = epsilon_0 div vb(E)
  $
  The divergence of $vb(E)$ is
  $
    div vb(E) = div k r^3 vu(r) = 1/r^2 pdv(,r)(r^2 k r^3) = 5 k r^2
  $
  so the charge density $rho$ is
  $ 
    rho = epsilon_0 5 k r^2
  $

  (b) The total charge $Q$ can be obtained in two ways; integrating the charge density over the volume, or integrating the electric field over the bounding surface. 

  Integrating the charge density over the volume of a sphere with radius $R$ gives
  $
    Q = integral_cal(V) epsilon_0 5 k r^2 r^2 sin theta dd(r,theta,phi)\
    arrow.b\
    5k epsilon_0 integral_0^R r^4(integral_0^(pi)sin theta (integral_0^(2 pi) dd(phi))dd(theta))dd(r) = \
    = 20k pi epsilon_0 integral_0^R r^4 dd(r) = ans(Q = 4 pi epsilon_0 k R^5)
  $

  Integrating the electric field over the bounding surface of the sphere with radius $R$ gives
  $
    Q/epsilon_0 = integral_cal(S) k r^3 r^2 sin theta dd(theta,phi) \
    arrow.b\
    Q = epsilon_0 k R^5 integral_0^pi sin theta (integral_0^(2 pi) dd(phi))dd(theta) arrow ans(Q=4pi epsilon_0 k R^5)
  $
]