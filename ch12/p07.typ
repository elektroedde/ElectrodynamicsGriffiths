#import "@local/elektroedde:0.1.0": *
#show: problem

=
In a laboratory experiment, a muon is observed to travel $800 $ m before disintegrating. A graduate student looks up the lifetime of a muon ($2 times 10^(-6)$s) and concludes that its speed was
$
  v = (800 "m")/(2 times 10^(-6)"s") = 4 times 10^8 "m/s".
$
Faster than light! Identify the student's error, and find the actual speed of this muon.

#solution[
  The student did not take into account the lifetime of the muon in the muons reference time. The muons lifetime in its own reference time is 
  $
    gamma t= 1/sqrt(1-(v/c)^2)t
  $
  If it travels for 800m then its speed is 
  $
    (800 "m")/(gamma times 2 times 10^(-6)"s") = v
  $
  Simplifying the distance over time gives
  $
  (800 "m")/(2 times 10^(-6)"s") = 4/3 c
  $
  Solving for $v$
  $
    4/3 c = gamma v = v/sqrt(1-(v/c)^2)\
    arrow.b\
    (4/3 c)^2 = v^2/(1-(v/c)^2)\
    arrow.b\
    (4/3 c)^2(1-(v/c)^2) = v^2\
    arrow.b\
    (4/3 c)^2 = v^2(1 + (4/3 c)^2 1/c^2) = v^2 (1 + 16/9)\
    arrow.b\
    v = 4/3 c 1/sqrt(1 + 16/9) = 4/3 c 1/sqrt(25/9) = 12/15 c
    = ans(4/5 c)
  $
]