#import "@local/elektroedde:0.1.0": *
#show: problem

=
A rocket ship leaves earth at a speed of $3/5 c$. When a clock on the rocket says 1 hour has elapsed, the rocket ship sends a light signal back to earth.

(a) According to earth clocks, when was the signal sent?

(b) According to earth clocks, how long after the rocket left did the signal arrive
back on earth?

(c) According to the rocket observer, how long after the rocket left did the signal
arrive back on earth?

#solution[
  (a) The time it takes for one hour to pass on the rocket, $t_r = 1"h"$, is according to earth the time $t_e$
  $
    t_e = gamma t_r = 1/sqrt(1 - 3^2/5^2) t_r = sqrt(25/16)t_r = 5/4 t_r = 5/4"h"
  $

  (b) The time the signal from the rocket was sent, according to earth, was $5/4"h"$. This means the rocket has travelled a distance $d=t_e\/(3/5 c) = 4500"s" times 3/5 c = 8.1 times 10^10 "m"$. This distance takes $2700"s"$ to reach earth, with a total time of $4500+2700 "s" = 7200 "s" = 2"h"$

  (c) We can use the result in (b), where the time on earth was 2 hours. According to the rocket, earth's clock run slow, so the time according to the rocket is 
  $
    gamma times 2"h" = 5/4 times 2"h" = 2.5"h"
  $
  
  Another solution, if the result for (b) is missing. Imagine that the rocket is now stationary and earth is moving away at $3/5 c$. The signal is sent after 1 hour, and in this time the earth has travelled $60"min" times 3/5 c = 6.48 times 10^9 "m"$. This distance now needs to be covered by the signal, which takes $6.48 times 10^9"m" times 1/c = 36"min"$. Repeating the argument, in those 36 minutes, the earth has travelled another distance, so we get $36"min" times 3/5 c$. We can model this as an infinite sum, with the factor $3\/5$:
  $
    t = 60"min" + 36"min" times sum_0^infinity (3/5)^n
  $
  which is a geometric series with solution
  $
    60"min" + 36"min" 1/(1 - 3/5) = 60"min" + 90"min" = 150"min" = 2"h"30"min"
  $
]