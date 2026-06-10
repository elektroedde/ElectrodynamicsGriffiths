#import "@local/elektroedde:0.1.0": *
#show: problem

=
Show that the *standing wave* $f (z, t)= A sin(k z) cos(k v t)$ satisfies
the wave equation, and express it as the sum of a wave traveling to the left and a
wave traveling to the right.

#solution[

  $
    &pdv(f,z,2) = -k^2 A sin(k z)cos(k v t)\
    &pdv(f,t,2) = -v^2 k^2 A sin(k z) cos (k v t)
  $
  The wave equation 
  $
    pdv(f,z,2) = 1/v^2 pdv(f,t,2)
  $
  is satisfied.
  Using the trigonometric identity
  $
    sin(a)cos(b) = 1/2 [sin(a+b)+sin(a-b)]
  $
  we obtain
  $
    A/2 [sin(k( z +  v t))+sin(k( z - v t))]
  $
  which is the sum of a wave traveling to the right and left.
]