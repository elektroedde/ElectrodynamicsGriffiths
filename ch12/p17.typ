#import "@local/elektroedde:0.1.0": *
#show: problem

=
Check 
$
  - ol(a)^0ol(b)^0 + ol(a)^1ol(b)^1 + ol(a)^2ol(b)^2 + ol(a)^3ol(b)^3 = -a^0 b^0 + a^1 b^1 + a^2b^2 + a^3b^3
$
using
$
  cases(space space &ol(a)^0 = gamma(a^0 - beta a^1),
  &ol(a)^1 = gamma(a^1 - beta a^0),
  &ol(a)^2 = a^2,
  &ol(a)^3 = a^3)
$

#solution[
  Computing the first term gives
  
  
   $
   -ol(a)^0ol(b)^0 = -gamma^2(a^0-beta a^1)(b^0-beta b^1) = -gamma^2(a^0 b^0 - a^0 b^1 beta-a^1 b^0 beta +  a^1 b^1 beta^2)
   $
   and the second term gives
   $
     ol(a)^1 ol(b)^1 = gamma^2(a^1 - beta a^0)(b^1 - beta b^0) = gamma^2(a^1 b^1 - a^1 b^0 beta - a^0 b^1 beta + a^0 b^0 beta^2)
   $
   Adding these two terms gives
   $
     -ol(a)^0ol(b)^0 + ol(a)^1 ol(b)^1 =gamma^2(-a^0 b^0 + a^0 b^1 beta + a^1 b^0 beta - a^1 b^1 beta^2 + a^1 b^1 - a^1 b^0 beta - a^0 b^1 beta + a^0 b^0 beta^2) = \
     = gamma^2 (a^0 b^0 (beta^2 - 1) + a^1 b^1(1-beta^2)) = gamma^2 (-a^0 b^0 1/gamma^2 + a^1 b^1 1/gamma^2) = ans(-a^0 b^0 + a^1 b^1)
   $

  The terms
  $
    ol(a)^2ol(b)^2 = a^2 b^2\
    ol(a)^3ol(b)^3 = a^3 b^3
  $
  Follow directly since $ol(a)^2 = a^2, ol(a)^3 = a^3$. $checkmark$
  
]