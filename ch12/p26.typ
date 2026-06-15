#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the invariant product of the 4-velocity with itself, $eta^mu eta_mu$. Is $eta^mu$ timelike, spacelike, or lightlike?

#solution[
  The proper velocity is
  $
    vb(eta) = 1/sqrt(1-u^2/c^2)vb(u)
  $
  This is the spatial component of a 4-vector
  which has the zeroth component
  $
    eta^0 = c/sqrt(1-u^2/c^2)
  $
  The invariant product is
  $
    (eta^0, eta) dot (-eta^0, eta) = -c^2/(1 - u^2/c^2) + u^2/(1-u^2/c^2) = -c^2 (1 - u^2/c^2)/(1 - u^2/c^2) = ans(-c^2)
  $
  The invariant product is therefore timelike ($I < 0$).
]