#import "@local/elektroedde:0.1.0": *
#show: problem

=
Synchronized clocks are stationed at regular intervals, a million km apart, along a straight line. When the clock next to you reads 12 noon:

(a) What time do you see on the 90th clock down the line?

(b) What time do you observe on that clock?

#solution[
  (a) The 90th clock down the line is a distance $d = 90 times 10^6 "km" = 90 times 10^9 "m"$. The time it takes for light to travel this distance is 
  $
    t = d/c = (90 times 10^9 "m")/(3 times 10^8 "m/s") = 300 "s".
  $ 
  This means that what you see on the 90th clock is what it showed $300$ seconds ago, so the clock reads 11:55.

  (b) The time you *observe* on that clock is taking into account the time it takes for the information to travel. Therefore, what you observe is what the clock really is, 12:00. 
]