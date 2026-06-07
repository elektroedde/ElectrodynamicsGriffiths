#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Twelve equal charges, $q$, are situated at the corners of a regular 12-sided polygon (for instance, one on each numeral of a clock face). What is the net force on a test charge $Q$ at the center?

(b) Suppose on of your 12 $q$s is removed (the one at "6 o'clock"). What is the force on $Q$? Explain your reasoning carefully.

(c) Now 13 equal charges $q$, are placed at the corners of a regular 13-sided polygon. What is the force on a test charge $Q$ at the center?

(d) If one of the 13 $q$s is removed, what is the force on $Q$? Explain your reasoning.

#solution[
  (a) Due to the symmetry, the net force on a test charge at the center is zero. This is because each opposite charge $q$ on the 12-sided polygon cancel each others force at the center. The force from the charge at 1 o'clock cancels the force from the charge at 7 o'clock, etc.

  (b) If the charge at 6 o'clock is removed, the net force on a test charge at the center is 
  $
    1/(4 pi epsilon_0) (q Q)/r^2 
  $
  directed straight down (straight up) if the charge $q$ and the test charge $Q$ are both positive or both negative (if they are positive/negative or negative/positive respectively). 

  (c) Again, due to symmetry, the net force at the center is zero.

  (d) The force on the center would again be 
  $
    1/(4 pi epsilon_0) (q Q)/r^2 
  $
  directed towards the removed charge (or opposite direction, if the charges $q$ and the test charge $Q$ are of opposite signs). This can either be explained by simply adding a charge of opposite sign at the removed charge, or by the same idea as in (b), from the following image

  #figure(image("/ch02/p01.png"))
  All vertical components of the forces cancel, giving the total force as the sum of the individual charges:
  $
    1/(4 pi epsilon_0) (q Q)/r^2  sum_(k=1)^13 cos((2 pi k)/13) = 1/(4 pi epsilon_0) (q Q)/r^2 vu(r) "with" vu(r) "pointing towards the right"
  $

]