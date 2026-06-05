#import "@local/elektroedde:0.1.0": *
#show: problem
#show math.phi: math.phi.alt
=
#neq(
$
  vec(ol(A)_y,ol(A)_z) = mat(cos phi, sin phi;-sin phi, cos phi) vec(A_y, A_z)
$
)<eq29>

#neq(
$
  vec(ol(A)_x, ol(A)_y, ol(A)_z) = mat(R_(x x),R_(x y),R_(x z);R_(y x),R_(y y),R_(y z);R_(z x),R_(z y),R_(x x)) vec(A_x, A_y, A_z)
$
)<eq30>
(a) Prove that the two-dimensional rotation matrix (@eq29) dot products. (That is, show that $ol(A)_y ol(B)_y + ol(A)_z ol(B)_z = A_y B_y + A_z B_z$).

(b) What constraints must the elements ($R_(i j)$) of the three-dimensional rotation matrix (@eq30) satisfy in order to preserve the length of $vb(A)$ (for all vectors $vb(A)$)?

#solution[
  (a)
  $
    vec(ol(A)_y,ol(A)_z) dot vec(ol(B)_y, ol(B)_z) = mat(cos phi, sin phi;-sin phi, cos phi) vec(A_y, A_z) dot mat(cos phi, sin phi;-sin phi, cos phi) vec(B_y, B_z)\
    arrow.b\
    ol(A)_y ol(B)_y + ol(A)_z ol(B)_z = vec(cos phi A_y + sin phi A_z, - sin phi A_y + cos phi A_z) dot  vec(cos phi B_y + sin phi B_z, - sin phi B_y + cos phi B_z) =\
    \
    \
    = (cos phi A_y + sin phi A_z)(cos phi B_y + sin phi B_z) + (-sin phi A_y + cos phi A_z)(-sin phi B_y + cos phi B_z)=\
    \
    \
    = cos^2 phi A_y B_y + cos phi sin phi A_y B_z + sin phi cos phi A_z B_y + sin^2 A_z B_z +\
    + sin^2 phi A_y B_y - sin phi cos phi A_y B_z - cos phi sin phi A_z B_y + cos^2 phi A_z B_z =\
    \
    \
    = (cos^2 phi + sin^2 phi) A_y B_y + (cos^2 phi + sin^2 phi)A_z B_z +\
    + underbrace((cos phi sin phi - sin phi cos phi),=0)A_y B_z +underbrace((sin phi cos phi - cos phi sin phi),=0)A_z B_y =\
    \
    \
    ans(= A_y B_y + A_z B_z = ol(A)_y ol(B)_y + ol(A)_z ol(B)_z)
  $

  (b) We want to preserve the length which means
  $
   norm(vb(R) dot vb(A)) = norm(vb(A))
  $
  Squaring both sides gives
  $
    (vb(R)vb(A))^TT (vb(R) vb(A)) = vb(A)^TT vb(A)\
    arrow.b\
    vb(A)^TT vb(R)^TT vb(R) vb(A) = vb(A)^TT vb(A)
  $
  which gives
  $
    ans(vb(R)^TT vb(R) = vb(I) = identitymatrix(3,fill: 0))
  $
]