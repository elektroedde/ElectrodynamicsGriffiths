#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Find the fields, and the charge and current distributions, corresponding to
$
  V(bold(r), t) = 0 cm bold(A)(bold(r), t) = - 1/(4 pi epsilon_0) (q t)/r^2 vu(r) 
$

(b) Use the gauge function $lambda = -(1\/4 pi epsilon_0) (q t\/r)$ to transform the potentials, and comment on the result.

#solution[
  The $vb(E)$ and $vb(B)$ fields are
$
  vb(E) = - grad V - pdv(vb(A),t)\
  vb(B) = curl vb(A) 
$
The derivative of $vb(A)$ with respect to time is 
$
  pdv(vb(A), t) = -1/(4 pi epsilon_0) q/r^2 vu(r) ,
$
while the curl of $vb(A)$ in spherical coordinates is
$
  curldefspherical(A) .
$
Since $A_phi.alt = A_theta = 0$, and $pdv(A_r,phi.alt) = pdv(A_r, theta) = 0$, the curl of $vb(A)$ is zero.

(a) 

$
ans(
  vb(E) = -pdv(vb(A),t) = 1/(4pi epsilon_0) q/r^2 vu(r)\
  vb(B) = curl vb(A) = 0
)
$

(b) Using the gauge function, $V "and" vb(A)$ are transformed into
$
  V'(vb(r), t) = V(vb(r),t) - pdv(lambda, t)\
  vb(A)'(vb(r),t) = vb(A)(vb(r),t) + grad lambda\
$

Writing out the derivative and gradient of $lambda$
$
  pdv(lambda,t) = -1/(4 pi epsilon_0) q/r\
  grad lambda = 1/(4pi epsilon_0)(q t)/r^2 vu(r)
$
gives the transformed potentials
$
  

  V'(vb(r),t) = 1/(4 pi epsilon_0) q/ r\
  vb(A)'(vb(r),t) = - 1/(4 pi epsilon_0) (q t)/r^2 vu(r) +1/(4 pi epsilon_0) (q t)/r^2 = 0
$
$vb(E)$ is now given by $-grad V$ (instead of by $-pdv(vb(A),t)$), while $vb(B)$ is again 0, this time directly because $curl vb(A) = curl 0 = 0$.
$
  ans(
    vb(E) = -grad V = -1/(4 pi epsilon_0)q/r^2 vu(r)\
    vb(B) = curl vb(A) = 0
  )
$
The result is exactly the same as in (a).

]