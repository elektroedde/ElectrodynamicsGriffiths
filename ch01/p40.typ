#import "@local/elektroedde:0.1.0": *
#show: problem

=
Compute the divergence of 
$
vb(v) = (r cos theta)vu(r) + (r sin theta)vu(theta) + (r sin theta cos phi)vu(phi)
$
Check the divergence theorem for this function, using as your volume the inverted hemispherical bowl of radius $R$, resting on the $x y$ plane and centered at the origin.

#solution[
  The divergence of $vb(v)$ is
  $
    div vb(v) = 1/r^2 pdv(,r)(r^2 v_r) + 1/(r sin theta) pdv(,theta)(sin theta v_theta) + 1/(r sin theta)pdv(v_phi,phi) = \
    = 3cos theta +2cos theta - sin phi = 5 cos theta - sin phi
  $

  The divergence theorem is
  $
    integral_cal(V) div vb(v) dd(tau) = integral.cont_cal(S) vb(v) dot dd(vb(a))
  $

  The volume integral is
  $
    integral_0^R integral_0^(pi/2) integral_0^(2 pi) (5 cos theta - sin phi )r^2 sin theta dd(r,theta,phi) =\
    = integral_0^R r^2 (integral_0^(pi/2) sin theta (integral_0^(2 pi) (5 cos theta - sin phi ) dd(phi))dd(theta))dd(r) = \
    = integral_0^R r^2 (integral_0^(pi/2) sin theta ([5 cos theta phi + cos phi]_0^(2 pi))dd(theta))dd(r) = \
    =integral_0^R r^2 (integral_0^(pi/2) sin theta (10 pi cos theta + 1 - 1)dd(theta))dd(r) = \
    =integral_0^R r^2 (integral_0^(pi/2) 10 pi sin theta cos theta dd(theta))dd(r) =\
    = integral_0^R r^2 (integral_0^(pi/2) 5 pi sin 2theta dd(theta))dd(r) =\
    = integral_0^R r^2 [(-5pi cos 2theta)/2]_0^(pi/2)dd(r) =
    integral_0^R r^2 [(5pi)/2-(-5pi)/2]dd(r) =
    integral_0^R 5 pi r^2 dd(r) =\ 
    = ans((5 pi R^3)/3)
  $

  The closed surface integral is split into the circular disc ($cal(S)_1$) and the half surface of the sphere ($cal(S)_2$)
  $
    integral.cont_cal(S) = integral_(cal(S)_1) + integral_cal(S)_2
  $
  For $cal(S)_1$:
  $
    dd(vb(a)) = vu(theta)r dd(r,phi)cm theta = pi/2cm r: 0 arrow R cm phi: 0 arrow 2pi
  $
  so the integral becomes
  $
    integral_0^R integral_0^(2pi) r^2 sin theta dd(r,phi) = integral_0^R r^2 (integral_0^(2pi)  dd(phi))dd(r) = 2 pi integral_0^R r^2 dd(r) = (2 pi R^3)/3
  $

  For $cal(S)_2$:
  $
    dd(vb(a)) = vu(r)r^2 sin theta dd(theta,phi)cm r=R cm theta: 0 arrow pi/2 cm phi: 0 arrow 2 pi
  $
  so the integral becomes
  $
    integral_0^(pi/2) integral_0^(2pi) r cos theta r^2 sin theta dd(theta,phi) = R^3 integral_0^(pi/2) sin theta cos theta (integral_0^(2 pi) dd(phi))dd(theta) =\
    = 2pi R^3 integral_0^(pi/2) sin theta cos theta dd(theta) = 2pi R^3 integral_0^(pi/2) 1/2 sin 2theta dd(theta) = \
    = 2pi R^3 [-(cos 2 theta)/4]_0^(pi/2) = 2pi R^3 (1/4 - (-1)/4) = pi R^3 = (3pi R^3)/3
  $

  Adding these results we get
  $
    (2pi R^3)/3 + (3pi R^3)/3 = ans((5 pi R^3)/3)
  $
  which is the same result we got from the volume integral.
  
]