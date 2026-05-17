#import "../template.typ": *

=
Let $bscrr$ be the separation vector from a fixed point $(x', y', z')$ to the point $(x, y, z)$, and let $scrr$ be its length. Show that

$"(a)" nabla (scrr^2) = 2 bscrr$

$"(b)" nabla (1/scrr) = -hscrr \/ scrr^2$

$"(c) What is the general formula for " nabla(scrr^n)"?"$

#solution[
  $
    bscrr = (x - x', y - y', z - z') \
    scrr = sqrt((x-x')^2 + (y-y')^2 + (z-z')^2)
  $

  (a)
  $
    nabla (scrr^2) = nabla((x-x')^2 + (y-y')^2 + (z-z')^2) = \
    = 2(x-x')bh(x) + 2(y-y')bh(y) + 2(z-z')bh(z) = 2 bscrr
  $

  (b)
  $
    nabla(1/scrr) = nabla(1/sqrt((x-x')^2 + (y-y')^2 + (z-z')^2)) = \
    = -1/2 (2(x-x') + 2(y-y') + 2(z-z'))/sqrt((x-x')^2 + (y-y')^2 + (z-z')^2)^3 = -bscrr / scrr^3 = - hscrr/scrr^2
  $

  (c)
    $
    nabla (scrr^n) = nabla(((x-x')^2 + (y-y')^2 + (z-z')^2)^(n/2)) = \
    = n/2 (2(x-x')bh(x) + 2(y-y')bh(y) + 2(z-z')bh(z)) [(x-x')^2 + (y-y')^2 + (z-z')^2]^((n-2)/2) =\
    = n scrr^(n-2) bscrr
  $
]