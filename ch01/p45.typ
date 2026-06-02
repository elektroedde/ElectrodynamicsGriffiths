#import "../template.typ": *
#show: problem

=
Evaluate the following integrals:

(a) $integral_(-2)^2 (2x+3)delta(3x) dif x$

(b) $integral_0^2 (x^3 + 3x + 2)delta(1-x) dif x$

(c) $integral_(-1)^1 9x^2 delta(3x+1) dif x$

(d) $integral_(-infinity)^a delta(x-b) dif x$

#solution[
  For the following problems we use 
  $
    delta(k x) = 1/abs(k) delta(x)
  $
  (a)
  $
    integral_(-2)^2 (2x+3)delta(3x) dif x = 3 integral_(-2)^2 1/3 delta(x) dif x = 1
  $

  (b)
  $
    integral_0^2 (x^3 + 3x + 2)delta(1-x) dif x =integral_0^2 (x^3 + 3x + 2)delta(x-1) dif x = 6integral_0^2 delta(x-1)dif x = 6
  $

  (c) 
  $
    delta(3x+1) = 1/3 delta(x+1/3)\
    arrow.b\
    integral_(-1)^1 9x^2 delta(3x+1) dif x = integral_(-1)^1 1/3 delta(x + 1/3) dif x = 1/3
  $

  (d)
  $
    integral_(-infinity)^a delta(x-b) dif x = cases(1", if" a > b, 0", if" a < b)
  $
]