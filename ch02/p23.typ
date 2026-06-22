#import "@local/elektroedde:0.1.0": *
#show: problem

=
 Find the potential a distance $s$ from an infinitely long straight wire
that carries a uniform line charge $lambda$. Compute the gradient of your potential, and
check that it yields the correct field.

#solution[
  From Gauss' Law, the field is 
  $
    vb(E) = lambda/(2 pi epsilon_0 s)vu(s)
  $
  The potential is then
  $
    V(vb(s)) = - integral_a^s lambda/(2 pi epsilon_0 s) dd(s) = lambda/(2 pi epsilon_0)[ln(s)]_s^a = \
    = lambda/(2 pi epsilon_0) ln(a/s)
  $
  The gradient of this potential, the electric field, is simply
  $
    vb(E) = -grad V = -lambda/(2 pi epsilon_0 s) vu(s)
  $
]