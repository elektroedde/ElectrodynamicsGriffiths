#import "@local/elektroedde:0.1.0": *
#show: problem

=
The coordinates of event $A$ are $(x_A , 0, 0),t_A ,$ and the coordinates of
event $B$ are $(x_B , 0, 0),t_B$. Assuming the displacement between them is spacelike, find the velocity of the system in which they are simultaneous.

#solution[
  To find the velocity of the frame in which two events happen at the same time, we set the difference in time to zero after Lorentz transformation.
  $
    Delta ol(t) = gamma(Delta t - v/c^2 Delta x) = 0 arrow v = (Delta t)/(Delta x) c^2\
    ans(v= (t_A - t_B)/(x_A - x_B) c^2 )
  $
]