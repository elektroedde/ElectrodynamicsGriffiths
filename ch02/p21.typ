#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the potential inside and outside a uniformly charged solid sphere whose radius is $R$ and whose total charge is $q$. Use infinity as your reference point.
Compute the gradient of $V$ in each region, and check that it yields the correct field.
Sketch $V(vb(r))$.

#solution[
  Outside the sphere, where $r > R$:
  $
    V_"o" = -1/(4 pi epsilon_0) integral_infinity^r q/(r^2)dd(r) = q/(4 pi epsilon_0 r )
  $

  Inside the sphere, we have the result above at $r = R$ minus the integral from the sphere surface with $r < R$. The total charge is the ratio between the full sphere with radius $R$ and the sphere with radius $r$: $q = q r^3/R^3$
  $
    V_"i" = q/(4 pi epsilon_0 R) -1/(4 pi epsilon_0) integral_R^r q/r^2 dd(r) =\
    q/(4 pi epsilon_0 R) - 1/(4 pi epsilon_0) integral_R^r (q r)/R^3 dd(r) = q/(4 pi epsilon_0)(1/R - [r^2/(2 R^3)]_R^r) = \
    = q/(4 pi epsilon_0)(1/R - 1/( R^3)((r^2-R^2)/2))
  $

  The gradient of the potential outside the sphere gives the electric field outside: 
  $
    vb(E)_"o" = -grad V = q/(4 pi epsilon_0 r^2)vu(r)
  $
  and inside gives the electric field
  $
    vb(E)_"i" = -grad V = (q r)/(4 pi epsilon_0 R^3) vu(r)
  $

  #figure(image("p21.png"))
]