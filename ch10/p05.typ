#import "@local/elektroedde:0.1.0": *
#show: problem

=
Which of the potentials
$
  &"(i)" V = 0cm vb(A) = cases((mu_0 k)/(4 c) (c t - abs(x))^2 vu(z)cm &"for" abs(x) < c t,0 &"for" abs(x) > c t)\
  \
  &"(ii)" V = 0cm vb(A) = - 1/(4 pi epsilon_0) (q t)/r^2 vu(r)\
  \
  &"(iii)" V = 0cm vb(A) = A_0 sin(k x - omega t)vu(y)
$
are in the Coulomb gauge? Which are in the Lorenz gauge?

#solution[
  The Coulomb gauge is
  $
    div vb(A) = 0
  $
  and the Lorenz gauge is
  $
    div vb(A) = - mu_0 epsilon_0 pdv(V,t)
  $

  Starting with checking the Coulomb gauge, we get
  $
    &"(i)" div vb(A) = div ((mu_0 k)/(4 c)(c t - abs(x))^2 vu(z)) = 0\
    &"(ii)" div vb(A) = div (-1/(4 pi epsilon_0) (q t)/r^2 vu(r)) = -(q t)/(4 pi epsilon_0) div (vu(r)/r^2)= -(q t)/(4 pi epsilon_0) delta^3(vb(r))\
    &"(iii)" div vb(A) = div (A_0 sin(k x - omega t)vu(y)) = 0
  $
  (i) and (iii) are in the Coulomb gauge, but not (ii).
  Next, checking Lorenz gauge we see that the divergence of $vb(A)$ should be proportional to the time derivative of $V$, but since $V=0$ for (i) and (iii), they are also in the Lorenz gauge. This does not apply to (ii) since the divergence of $vb(A) != 0$ while $pdv(V,t) = 0$.

  (i)  Both Coulomb and Lorenz.

  (ii) Neither Coulomb or Lorenz.

  (iii) Both Coulomb and Lorenz.
]