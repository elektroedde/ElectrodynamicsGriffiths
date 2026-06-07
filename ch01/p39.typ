#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Check the divergence theorem for the function $vb(v)_1 = r^2 vu(r)$, using as your volume the sphere of radius $R$, centered at the origin.

(b) Do the same for $vb(v)_2 = (1\/r^2) vu(r)$. 

#solution[
  The divergence theorem is
  $
    integral_cal(V) div r^2 vu(r) dd(tau) = integral.cont_cal(S) r^2 vu(r) dot dd(vb(a))
  $
  Taking the divergence of $vb(v)_1$ in spherical coordinates gives
  $
    div r^2 vu(r) = 1/r^2 pdv(,r) (r^2 v_(1r)) = 1/r^2 pdv(r^4,r) = (4r^3)/r^2 = 4 r
  $

  In spherical coordinates,
  $
    dd(tau) =r^2 sin theta dd(r,theta,phi)\
    dd(vb(a)) = r^2 sin theta dd(theta,phi) vu(r)
  $
  LHS of the divergence theorem becomes
  $
    integral_cal(V) 4r  r^2 sin theta dd(r,theta,phi) = 4limits(integral)_0^R r^3 limits(integral)_0^pi sin theta limits(integral)_0^(2pi) dd(r,theta,phi) =\
    = 8pi limits(integral)_0^R r^3 limits(integral)_0^pi sin theta dd(r,theta) = 16pi limits(integral)_0^R r^3 dd(r) = ans(4pi R^4)
  $

  and RHS
  $
    integral.cont_cal(S) r^2 r^2 sin theta dd(theta,phi) = r^4 limits(integral)_0^pi sin theta limits(integral)_0^(2pi) dd(theta,phi) = 2 pi r^4 limits(integral)_0^pi sin theta dd(theta) = 4 pi evaluated(r^4)_(r=R) = ans(4 pi R^4)
  $
  which confirms the divergence theorem for $vb(v)_1$.

  (b) 

  The divergence of $vb(v)_2$ is 
  $
    div vb(v)_2 = 1/r^2 pdv(,r)(r^2 v_(2r)) = 1/r^2 pdv(1,r) = ans(0)
  $
  so LHS of divergence theorem is zero (which is not completely true, it's zero everywhere except at $r=0$, so the calculation here is not fully correct).
  The RHS is
  $
    integral.cont_cal(S) = 1/r^2 r^2 sin theta dd(theta, phi) = limits(integral)_0^pi sin theta limits(integral)_0^(2 pi) dd(theta,phi) = 2 pi limits(integral)_0^pi sin theta dd(theta) = ans(4 pi)
  $
]