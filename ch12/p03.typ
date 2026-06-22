#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) What's the percent error introduced when you use Galileo's rule, instead of Einstein's, with $v_(A B) = 5 "mi/h"$ and $v_(B C) = 60 "mi/h"$?

(b) Suppose you could run at half the speed of light down the corridor of a train going three-quarters the speed of light. What would your speed be relative to
the ground?

(c) Prove, using Eq. 12.3, that if $v_(A B) < c$ and $v_(B C) < c$ then $v_(A C) < c$. Interpret this
result.

#solution[
  (a)
  Galileo's rule is simply 
  $
    v_(A C) = v_(A B) + v_(B C) = 60 + 5 = 65 "mi/h"
  $
  while Einstein's rule gives
  $
    v_(A C) = (v_(A B) + v_(B C))/(1 + (v_(A B)v_(B C))/c^2)
  $
  where the denominator is
  $
    1 + (v_(A B)v_(B C))/c^2 = 1+ (60"mi/h" times 5"mi/h")/(670,616,629 "mi/h")^2 = 1 + 6.67 times 10^(-16)
  $
  so the percentage error is 
  $
    6.67 times 10^(-16) times 100 \
    arrow.b\
    ans(6.67 times 10^(-14))
  $

  (b) With Einstein's velocity addition rule and $v_(A B) = 1/2c, v_(B C) = 3/4 c$, the result is
  $
    v_(A C) = (v_(A B) + v_(B C))/(1 + (v_(A B)v_(B C))/c^2) = (1/2 c + 3/4 c)/(1 + 3/8) = 5/4  8 / 11 c = ans(10/11 c)
  $

  (c) Introducing variables $alpha = v_(A C)/c, beta_1 = v_(A B)/c, beta_2 = v_(B C)/c$ makes this proof easier. The idea for these variables comes from manually solving without variable substitution (which is done below) and recognizing how it can be written easier. The equation becomes
  $
    alpha = (beta_1 + beta_2)/(1 + beta_1 beta_2)
  $
  Squaring this gives
  $
    alpha^2 = (beta_1^2 + 2 beta_1 beta_2 + beta_2^2)/(1 + 2 beta_1 beta_2 + beta_1^2 beta_2^2)
  $
  Extending the numerator with $1 + beta_1^2 beta_2^2 - 1 - beta_1^2 beta_2^2$ gives
  $
     
    alpha^2 = (1 + 2 beta_1 beta_2 + beta_1^2 beta_2^2 +beta_1^2 + beta_2^2-1-beta_1^2beta_2^2)/(1 + 2 beta_1 beta_2 + beta_1^2 beta_2^2) =\
    = 1 + (beta_1^2 + beta_2^2 - 1 - beta_1^2 beta_2^2)/(1 + 2 beta_1 beta_2 + beta_1^2 beta_2^2)
  $
  What's left is to showthat the numerator above is negative (the denominator is positive)
  $
    beta_1^2 + beta_2^2 - 1 - beta_1^2 beta_2^2 < 0\
    arrow.b\
    beta_1^2(1-beta_2^2) -(1-beta_2^2) = (beta_1^2 - 1)(1-beta_2^2)
  $
  Since $beta_1, beta_2 < 1$, the above equation is
  $
    (beta_1^2 - 1)(1-beta_2^2) = ("negative")("positive") = "negative"
  $
  and the proof is done.
  
  
   *Extra*: Doing this from the start without variable substitution gives:
   Squaring the equation gives
  $
   v_(A C)^2 = (v_(A B) + v_(B C))^2 /(1 + (v_(A B)v_(B C))/c^2)^2 = (v_(A B)^2 + 2 v_(A B) v_(B C) + v_(B C)^2)/(1 + 2(v_(A B) v_(B C))/c^2 + (v_(A B)^2 v_(B C)^2)/c^4)
  $
  Dividing both sides by $c^2$ gives 
  $
    v_(A C)^2/c^2 = (v_(A B)^2/c^2 + 2 (v_(A B) v_(B C))/c^2 + v_(B C)^2/c^2)/(1 + 2(v_(A B) v_(B C))/c^2 + (v_(A B)^2 v_(B C)^2)/c^4)
  $
  Extending the numerator with $1 + (v_(A B)^2 v_(B C)^2)/c^4 - 1 -(v_(A B)^2 v_(B C)^2)/c^4 $ gives
  $
    v_(A C)^2/c^2 = (1 + 2 (v_(A B) v_(B C))/c^2 + (v_(A B)^2 v_(B C)^2)/c^4 - 1 -(v_(A B)^2 v_(B C)^2)/c^4 + v_(A B)^2/c^2 +   v_(B C)^2/c^2)/(1 + 2(v_(A B) v_(B C))/c^2 + (v_(A B)^2 v_(B C)^2)/c^4) =\
    = 1 + (v_(A B)^2/c^2 + v_(B C)^2/c^2 -1-(v_(A B)^2 v_(B C)^2)/c^4)/(1 + 2(v_(A B) v_(B C))/c^2 + (v_(A B)^2 v_(B C)^2)/c^4)
  $

  What's left to prove the statement is showing that the numerator part is negative (since the denominator is always positive):
  $
    v_(A B)^2/c^2 + v_(B C)^2/c^2 -1-(v_(A B)^2 v_(B C)^2)/c^4 < 0\
    v_(A B)^2/c^2 (1  - v_(B C)^2/c^2) + v_(B C)^2/c^2- 1\
    arrow.b\
    v_(A B)^2/c^2 (1  - v_(B C)^2/c^2) -(1 - v_(B C)^2/c^2) = (v_(A B)^2/c^2 - 1)(1 - v_(B C)^2/c^2)
  $

  Since $v_(A B) < c => v_(A B)^2/c^2 - 1 < 0$, and $v_(B C) < c => 1 - v_(B C)^2/c^2 > 0$, the product is strictly negative, hence $v_(A C)^2/c^2 < 1 => v_(A C) < c$. We can now recognize the variable substitution for easier calculations.
]