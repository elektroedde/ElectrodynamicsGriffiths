#import "../template.typ": *

=
Check the fundamental theorem for gradients, using $T = x^2 + 4x y + 2y z^3$, the points $bold(a) = (0,0,0)$, $bold(b) = (1,1,1)$, and the three paths:

$"(a)" (0,0,0) arrow (1,0,0) arrow (1,1,0) arrow (1,1,1)$

$"(b)" (0,0,0) arrow (0,0,1) arrow (0,1,1) arrow (1,1,1)$

$"(c) the parabolic path" z=x^2"," y = x $

#solution[
  The fundamental theorem for gradients says
  $
    integral_a^b (nabla T) dot dif bold(l) = T(bold(b)) - T(bold(a))
  $
  $
    nabla T = (2x + 4y)bh(x) + (4x + 2z^3)bh(y) + (6y z^2)bh(z)
  $

  RHS for all paths is 
  $
    T(bold(b)) - T(bold(a)) = 7 - 0 = ans(7)
  $
  which is what we want to check for the LHS of the different paths

  (a) 
  
  $(0,0,0) arrow (1,0,0)$ has $x: 0 arrow 1"," y=z=0$ and $dif bold(l) = dif x bh(x)$
  $
    "(i)" integral_0^1 2x dif x = 1
  $

  $(1,0,0) arrow (1,1,0)$ has $y: 0 arrow 1"," x = 1"," z = 0$ and $dif bold(l) = dif y bh(y)$
  $
    "(ii)" integral_0^1 4 dif y = 4
  $

  $(1,1,0) arrow (1,1,1)$ has $z: 0 arrow 1"," x = 1"," y = 1$ and $dif bold(l) = dif z bh(z)$

  $
    "(iii)" integral_0^1 6z^2 dif z = 2
  $

  $
    "(i)" + "(ii)" + "(iii)" = 1 + 4 + 2 = ans(7)
  $

  (b) 
  
  $(0,0,0) arrow (0,0,1)$ has $z: 0 arrow 1"," x=y=0$ and $dif bold(l) = dif z bh(z)$
  $
    "(i)" integral_0^1 0dif y = 0
  $

  $(0,0,1) arrow (0,1,1)$ has $y: 0 arrow 1"," x = 0"," z = 1$ and $dif bold(l) = dif y bh(y)$
  $
    "(ii)" integral_0^1 2 dif y = 2
  $

  $(0,1,1) arrow (1,1,1)$ has $x: 0 arrow 1"," y = 1"," z = 1$ and $dif bold(l) = dif x bh(x)$

  $
    "(iii)" integral_0^1 2x + 4 dif x = 5
  $

  $
    "(i)" + "(ii)" + "(iii)" = 0 + 2 + 5 = ans(7)
  $

  (c) 
  Parametrization $x = y = t$, $z = t^2$ gives $bold(r)(t) =(t, t, t^2)"," t: 0 arrow 1$. This means $dif bold(l) = bold(r)'(t) dif t = (1, 1, 2t) dif t$

  $
    integral_0^1 (6t, 4t + 2t^6, 6t^5) dot (1, 1, 2t) dif t = integral_0^1 (6t + 4t + 2t^6 + 12t^6)dif t = \
    = integral_0^1 10t + 2t^6 + 12t^6 dif t = 5 + 2/7 + 12/7 = ans(7)
  $

]
