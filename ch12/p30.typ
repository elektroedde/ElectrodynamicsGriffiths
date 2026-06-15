#import "@local/elektroedde:0.1.0": *
#show: problem

=
If a particle's kinetic energy is $n$ times its rest energy, what is its
speed?

#solution[
  The kinetic energy is given by
  $
    E_("kin") = m c^2(1/sqrt(1-u^2/c^2) - 1)
  $
  and the rest energy is
  $
    E_("rest") = m c^2
  $
  If we want the kinetic energy to be $n$ times its rest energy, we set
  $
    1/sqrt(1-u^2/c^2) - 1 = n
  $
  Solving for $u$ gives
  $
    1/(1-u^2/c^2) = (n+1)^2 \
    1/(n+1)^2 = 1- u^2/c^2\
    u^2/c^2 = 1 - 1/(n+1)^2\
    u^2 = (1 - 1/(n+1)^2)c^2\
    u = sqrt(((n+1)^2-1)/(n+1)^2) c\
    u =  sqrt(n^2 + 2n)/(n+1)^2 c\
    ans(u = sqrt(n(n+2))/(n+1)c)
  $
]