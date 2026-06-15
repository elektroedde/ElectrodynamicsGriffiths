#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Event $A$ happens at point ($x_A = 5, y_A = 3, z_A = 0$) and at time $t_A$ given by
$c t_A = 15$; event $B$ occurs at (10, 8, 0) and $c t_B = 5$, both in system $cal(S)$.

(i) What is the invariant interval between $A$ and $B$?

(ii) Is there an inertial system in which they occur simultaneously? If so, find its velocity (magnitude and direction) relative to $cal(S)$.

(iii) Is there an inertial system in which they occur at the same point? If so, find
its velocity relative to $cal(S)$.

(b) Repeat part (a) for $A= (2, 0, 0),c t = 1$; and $B= (5, 0, 0),c t = 3$.

#solution[
  (a) The displacement 4-vector is
  $
    Delta x^mu = x_A^mu - x_B^mu
  $
  The scalar product of $Delta x^mu$ with itself gives the invariant interval between two events:
  $
    I eq.triple (Delta x)^mu (Delta x)_mu = -(Delta x^0)^2 + (Delta x^1)^2 + (Delta x^2)^2 + (Delta x^3)^2
  $
  The two events $A$ and $B$ are 
  $
    x_A^mu = (15,5,3,0)\
    x_B^mu = (5, 10, 8, 0)\
    arrow.b\
    Delta x^mu = (15-5,5-10,3-8,0) = (10, -5, -5, 0)
  $
  This gives the invariant interval
  $
    I = (Delta x)^mu (Delta x)_mu = (10,-5,-5,0) dot (-10, -5, -5, 0) =\
    = -(10)^2 + (-5)^2 + (-5)^2 = -50
  $
  Since $I < 0$, the invariant interval is timelike, so there exist an inertial system in which they occur at the same point, but not at the same time.

  Using the Lorentz transformation, we want to find the velocity of the frame in which they occur at the same point. This is equal to setting the difference in displacement to zero after Lorentz transformation.

  $
    Delta ol(x) = gamma(Delta x - v_x Delta t) = 0 arrow v_x = (Delta x)/(Delta t) = (-5)/(10/c) = -c/2\
    Delta ol(y) = gamma(Delta y - v_y Delta t) =0 arrow v_y = (Delta y)/(Delta t) = (-5)/(10c) = -c/2\
  $
  So the speed of the frame is 
  $
    v =-c/2 vu(x) -c/2 vu(y)
  $

  (b) The displacement 4-vector is now
  $
    x_A^mu = (1,2,0,0)\
    x_B^mu = (3,5,0,0)\
    arrow.b\
    Delta x^mu = (1-3,2-5,0,0)
  $
  This gives the invariant interval
  $
    I = (Delta x)^mu (Delta x)_mu = (-2,-3,0,0) dot (2, -3, 0, 0) =\
    = -(2)^2 + (-3)^2= 5
  $
  Since $I > 0$, the invariant interval is spacelike so there exists a frame in which they occur at the same time, but not at the same point. 

  To find the velocity of the frame in which they occur at the same time, we set the difference in time to zero after Lorentz transformation.
  $
    Delta ol(t) = gamma(Delta t - v/c^2 Delta x) = 0 arrow v = (Delta t)/(Delta x) c^2 \
    v = (c t_A - c t_B)/(x_A - x_B) c^2 = (1 - 3)/(2 - 5) c = (-2)/(-3)c = 2/3 c
  $
]