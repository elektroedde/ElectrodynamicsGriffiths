#import "@local/elektroedde:0.1.0": *
#show: problem

=
Evaluate the following integrals:

(a) $integral_2^6 (3x^2 - 2x - 1)delta(x-3) dif x$

(b) $integral_0^5 cos(x)delta(x-pi) dif x$

(c) $integral_0^3 x^3 delta(x+1) dif x$

(d) $infint ln(x+3)delta(x+2) dif x$

#solution[
  Integral of delta-dirac
  $
    integral_a^b delta(x-p) dif x = cases(
  1&", if" p in (a\, b),
  0&"," "otherwise"
)

  $
  (a) Zero everywhere except at $x=3$ which gives
  $
    20 underbrace(integral_2^6 delta(x-3),=1 "at" x=3) dif x =20
  $

  (b) Zero everywhere except at $x = pi$ which gives
  $
    -1 integral_0^5 delta(x-pi) dif x = -1
  $

  (c) Zero everywhere except at $x = -1$, which is not included in the integral bounds, therefore it is zero.

  (d) Zero everywhere except at $x = -2$ which gives 
  $
    ln(1) infint delta(x+2) dif x = 0
  $
]