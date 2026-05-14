#import "../template.typ": *

=
The height of a certain hill (in feet) is given by
$
  h(x, y) = 10(2x y - 3x^2 - 4y^2 - 18x + 28y + 12)
$
where $y$ is the distance (in miles) north, $x$ the distance east, of South Hadley.

(a) Where is the top of the hill located?

(b) How high is the hill?

(c) How steep is the slope (in feet per mile) at a point 1 mile north and 1 mile east of South Hadley? In what direction is the slope steepest, at that point?

#solution[
  The gradient of $h(x,y)$ is 
  $
    nabla h = (20y - 60x - 180)bh(x) + (20x - 80y + 280)bh(y)
  $

  (a) The location of the top is calculated by setting the gradient to $0$. This means 
  $
    20y - 60x - 180 = 0 \
    20x - 80y + 280 = 0
  $
  which has the solution $(x,y) = (-2, 3)$ miles.

  (b) Putting the values given by (a) into the height function $h(x,y)$, the height of the hill is $h(-2, 3) = 720$ft.

  (c) At the point $(x,y) = (1, 1)$, the steepness and direction is obtained by putting this point into the gradient. The slope is then $sqrt(2) dot 220$ ft/mile in the direction $-bh(x) + bh(y)$, which corresponds to northwest.
]