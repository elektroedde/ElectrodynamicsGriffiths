#import "@local/elektroedde:0.1.0": *
#show: problem

=
Show that the differential equations for $V$ and $bold(A)$
$
  nabla^2 V + pdv(,t) (nabla dot bold(A)) = -1/epsilon_0 rho \
  (nabla^2bold(A) - mu_0 epsilon_0 pdv(bold(A), t, 2)) - nabla(nabla dot bold(A) + mu_0 epsilon_0 pdv(V, t)) = -mu_0 bold(J)
$
can be written in the more symmetrical form
$
  square^2V + pdv(L, t) = - 1/epsilon_0 rho \
  square^2 bold(A) - nabla L = -mu_0 bold(J)
$
where
$
  square^2 eq.triple nabla^2 - mu_0 epsilon_0 pdv(,t,2) text("  and  ") L eq.triple nabla dot bold(A) + mu_0 epsilon_0 pdv(V,t)
$

#solution[
Put the definitions of $square^2$ and $L$ into the equations for $V$:
$
  (nabla^2 - mu_0 epsilon_0 pdv(,t,2))V + pdv(,t)(nabla dot bold(A) + mu_0 epsilon_0 pdv(V,t)) = \
  = nabla^2V - mu_0 epsilon_0 pdv(V,t,2) + pdv(,t)(nabla dot bold(A)) + mu_0 epsilon_0 pdv(V,t,2) = \
  = nabla^2 V + pdv(,t)(nabla dot bold(A)) = - 1/epsilon_0 rho
$
and for $bold(A)$:
$
  (nabla^2 - mu_0 epsilon_0 pdv(,t,2))bold(A) - nabla(nabla dot bold(A) + mu_0 epsilon_0 pdv(V,t)) = \
  = (nabla^2bold(A) - mu_0 epsilon_0 pdv(bold(A),t,2)) - nabla(nabla dot bold(A) + mu_0 epsilon_0 pdv(V,t)) = -mu_0 bold(J)
$
]
