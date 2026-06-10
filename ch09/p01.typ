#import "@local/elektroedde:0.1.0": *
#show: problem

=
By explicit differentiation, check that the functions $f_1, f_2, "and" f_3$ satisfy the wave equation. Show that $f_4 "and" f_5$ do not.
$
  &f_1 (z,t) = A e^(-b(z-v t)^2)\
  &f_2 (z,t) = A sin [b(z - v t)]\
  &f_3 (z,t) = A/(b(z-v t)^2 + 1)\
  &f_4 (z,t) = A e^(-b(b z^2 + v t))\
  &f_5 (z,t) = A sin (b z) cos(b v t)^3
$
#solution[
The wave equation is
$
  pdv(f,z,2) = 1/v^2 pdv(f,t,2) .
$

$f_1$:
$
  &pdv(f_1,z) = -2b A (z-v t)e^(-b(z - v t)^2 )cm
  &&pdv(f_1,z,2) = 4 b^2 A(z- v t)^2 e^(-b(z-v t)^2)\

  &pdv(f_1,t) = 2v b A(z - v t)e^(-b(z - v t)^2)cm
  &&pdv(f_1,t,2) = 4 v^2 b^2 A(z - v t)^2 e^(-b(z - v t)^2)\
  \
$
$
  ans(pdv(f_1,z,2) = 1/v^2 pdv(f_1,t,2) \
  arrow.b\
  4 b^2 A(z- v t)^2 e^(-b(z-v t)^2) = 1/v^2 4 v^2 b^2 A(z - v t)^2 e^(-b(z - v t)^2) checkmark )
$

$f_2$:
$
  
  &pdv(f_2,z) = b A cos[b(z - v t)]cm
  &&pdv(f_2,z,2) = -b^2 A sin[b(z-v t)]\

  &pdv(f_2,t) = -v b A cos[b(z-v t)]cm
  &&pdv(f_2,t,2) = -v^2 b^2 A sin[b(z-v t)]\
  \
$

$
  ans(pdv(f_2,z,2) = 1/v^2 pdv(f_2,t,2) \
  arrow.b\
  -b^2 A sin[b(z-v t)] = -1/v^2 v^2 b^2 A sin[b(z-v t)] checkmark )
$

$f_3$ using quotient rule:
$
  
  pdv(f_3,z) &= (-2 b A (z - v t))/((b(z-v t)^2 + 1)^2)\
  pdv(f_3,z,2) &= (-2 b A )/((b(z-v t)^2 + 1)^2) - (-2 b A (z - v t) 2(b(z-v t)^2 + 1)(2b(z - v t)))/((b(z-v t)^2 + 1)^4)= \
  &= (-2b A)/(b(z-v t)^2 + 1)^2 + (8 b^2 A (z-v t)^2)/((b(z- v t)^2 + 1)^3)\

  pdv(f_3,t) &= (2b v A(z- v t))/(b(z-v t)^2 + 1)^2\
  pdv(f_3,t,2) &= (-2 b v^2 A)/(b(z-v t)^2 + 1)^2 - (2b v A(z- v t)2(b(z-v t)^2+1)(-2 b v(z - v t)))/(b(z-v t)^2 + 1)^4=\
  &=(-2 b v^2 A)/(b(z-v t)^2 + 1)^2 + (8b^2 v^2 A(z- v t)^2)/(b(z-v t)^2 + 1)^3
  \
$

$
  ans(pdv(f_3,z,2) = 1/v^2 pdv(f_3,t,2) checkmark)
$

$f_4$:
$
  
  &pdv(f_4,z) = -2b^2z A e^(-b(b z^2 + v t))cm
  &&pdv(f_4,z,2) = (-2b^2 + 4b^4 z^2)(A e^(-b(b z^2 + v t)))\

  &pdv(f_4,t) = -b v A e^(-b(b z^2 + v t))cm
  &&pdv(f_4,t,2) = b^2 v^2 A e^(-b(b z^2 + v t))\
  \
$

$
  ans(pdv(f_4,z,2) != 1/v^2 pdv(f_4,t,2) crossmark)

$

$f_5$:
$
  
  &pdv(f_5,z) = b A cos(b z) cos(b v t)^3cm
  pdv(f_5,z,2) = -b^2 A sin(b z) cos(b v t)^3\

  &pdv(f_5,t) = -3(b^3 v^3 t^2)sin(b z) sin(b v t)^3\

  &pdv(f_5,t,2) = -9(b^6 v^6 t^4)sin(b z) cos(b v t)^3 -6(b^3 v^3 t)sin(b z) sin(b v t)^3 \
  \
$

$
  ans(pdv(f_5,z,2) != 1/v^2 pdv(f_5,t,2) crossmark )
$
]