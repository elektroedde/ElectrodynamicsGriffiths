#import "@local/elektroedde:0.1.0": *
#show: problem

=
Check that the retarded potentials of an oscillating dipole
$
  V(r, theta, t) = (p_0 cos theta)/(4 pi epsilon_0 r){-omega/c sin[omega(t - r/c)] + 1/r cos[omega(t - r/c)]} \
  bold(A)(r, theta, t) = - (mu_0 p_0 omega)/(4 pi r) sin[omega(t - r/c)]bold(hat(z))
$
satisfy the Lorenz gauge condition.

#solution[
  The Lorenz gauge condition is
  $
    div vb(A) = -mu_0 epsilon_0 pdv(V,t)
  $
  Calculating the time derivative of $V$
  $
    pdv(V,t) = (p_0 cos theta)/(4 pi epsilon_0 r){-omega/c sin[omega(t - r/c)] + 1/r cos[omega(t - r/c)]}
  $
  Calculating the divergence of $vb(A)$
  $
    div vb(A) = 
  $
]
