#import "@local/elektroedde:0.1.0": *
#show: problem

=
#neq(
$W = 1/2 integral rho V dd(tau)$
)<eq2.43>

#neq(
$W = epsilon_0 / 2 (integral_cal(V) E^2 dd(tau) + integral.cont_cal(S) V vb(E) dot dd(vb(a)))$
)<eq2.44>

#neq(
$W = epsilon_0/2 integral E^2 dd(tau)$
)<eq2.45>
Find the energy stored in a uniformly charged solid sphere of radius $R$ and charge $q$. Do it three different ways:

(a) Use @eq2.43 You found the potential in Prob. 2.22.

(b) Use @eq2.45. Don't forget to integrate over all space.

(c) Use @eq2.44. Take a spherical volume of radius $a$. What happens as $a arrow infinity$?

#solution[
  (a) Using @eq2.43 with 
  $
    V = q/(8 pi epsilon_0 R)(3 - r^2/(  R^2))
  $ 
  gives the energy
  $
    W = 1/2 integral (rho q)/(8 pi epsilon_0 R)(3 r^2 - r^4/(  R^2)) dd(tau) =\
    = 1/2 (rho q)/(2 epsilon_0 R) integral_0^R (3r^2 - r^4/R^2) dd(r) = (rho q)/(4 epsilon_0 R) [r^3 - r^5/(5 R^2)]_0^R =\
    = (rho q)/(4 epsilon_0 R) [R^3 - R^3/5] = (rho q)/4 epsilon_0 [R^2 - R^2/5] = (rho q)/(5 epsilon_0) R^2
  $
  and with 
  $
  rho = q/(4/3 pi R^3)
  $
  we can simplify the expression to
  $
    ans(W = (3q^2)/(20 pi epsilon_0 R) = ec (3 q^2)/(5 R))
  $

  (b) The electric field
  $
    vb(E)_"o"  = q/(4 pi epsilon_0 r^2)vu(r)\
    vb(E)_"i"  = (q r)/(4 pi epsilon_0 R^3) vu(r)
  $
  Starting with the outside, $E^2$ becomes $(q^2)/(16 pi^2 epsilon_0^2 r^4)$ giving the energy
  $
    W = epsilon_0/2 integral (q^2)/(16 pi^2 epsilon_0^2 r^4) dd(tau) = (q^2 epsilon_0 4 pi)/(32 pi^2 epsilon_0^2) integral_R^infinity 1/r^2 = (q^2 epsilon_0 4 pi)/(32 pi^2 epsilon_0^2) [-1/r]_R^infinity =\
    = (q^2)/(8 pi epsilon_0 R)
  $
  Doing the same for the inside, $E^2$ becomes $(q^2 r^2)/(16 pi^2 epsilon_0^2 R^6)$ giving the energy
  $
    W = epsilon_0/2 integral (q^2 r^2)/(16 pi^2 epsilon_0^2 R^6) dd(tau) = (4 pi epsilon_0 q^2)/(32 pi^2 epsilon_0^2 R^6) integral_0^R r^4 =\
    = q^2/(8 pi epsilon_0) (1/(5 R))
  $
  Adding them up gives
  $
    ans(W = ec q^2 (1/(2 R) + 1/(10 R)) = ec (3 q^2)/(5 R))
  $

  (c) Using @eq2.44 we have the fields
  $
    &E_i^2 = (q^2 r^2)/(16 pi^2 epsilon_0^2 R^6)\
    &E_o^2 = (q^2)/(16 pi^2 epsilon_0^2 r^4)\
    &V_o = q/(4 pi epsilon_0 r )
  $
  This gives the energy
  $
    W = epsilon_0/2((4 pi q^2)/(16 pi^2 epsilon_0^2 R^6) integral_0^R r^4 dd(r) + (4 pi q^2)/(16 pi^2 epsilon_0^2) integral_R^a 1/r^2 dd(r) + (q^2)/(16 pi^2 epsilon_0^2)integral.cont 1/r  sin theta dd(theta,phi) ) \
    arrow.b\
    q^2/2(1/(4 pi epsilon_0 R^6) integral_0^R r^4 dd(r) + 1/(4 pi epsilon_0) integral_R^a 1/r^2 dd(r) + 1/(4 pi epsilon_0)1/a )
  $
  where the volume integrals were immediately simplified according to $integral_0^R integral_0^pi integral_0^(2 pi) dd(r, phi,theta) = 4 pi integral_0^R dd(r)$

  $
    q^2/2(1/(4 pi epsilon_0 R) 1/5 - 1/(4 pi epsilon_0 a) +1/(4 pi epsilon_0) 1/R + 1/(4 pi epsilon_0)1/a ) \
    arrow.b\
    ans(W= ec (3q^2)/(5R))
  $
]