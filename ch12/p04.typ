#import "../template.typ": *

=
As the outlaws escape in their getaway car, which goes $3/4 c$, the police officer fires a bullet from the pursuit car, which only goes $1/2 c$. The muzzle velocity of the bullet (relative to the gun) is $1/3 c$. Does the bullet reach its target (a) according to Galileo, (b) according to Einstein?

#solution[
(a) Adding up the velocities with Galileo's velocity addition rule, the resulting velocity of the bullet is
$
  1/2 c + 1/3 c = 5/6 c > 3/4 c
$
so the bullet does reach its target.

(b) Using Einstein's velocity addition rule, the result is instead
$
  v_"bullet" = (v_"car" + v_"muzzle")/(1 + (v_"car"v_"muzzle")/c^2) = (5/6 c)/(1 + 1/6) = 5/7 c < 3/4 c
$
so the bullet does not reach its target.
]
