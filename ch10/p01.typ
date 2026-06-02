#import "../template.typ": *
#show: problem

=
Show that the differential equations for $V$ and $bold(A)$
$
  nabla^2 V + diff/(diff t) (nabla dot bold(A)) = -1/epsilon_0 rho \
  (nabla^2bold(A) - mu_0 epsilon_0 (diff^2 bold(A))/(diff t^2)) - nabla(nabla dot bold(A) + mu_0 epsilon_0 (diff V)/(diff t)) = -mu_0 bold(J)
$
can be written in the more symmetrical form
$
  square^2V + (diff L)/(diff t) = - 1/epsilon_0 rho \
  square^2 bold(A) - nabla L = -mu_0 bold(J)
$
where
$
  square^2 eq.triple nabla^2 - mu_0 epsilon_0 diff^2/(diff t^2) text("  and  ") L eq.triple nabla dot bold(A) + mu_0 epsilon_0 (diff V)/(diff t)
$

#solution[
Put the definitions of $square^2$ and $L$ into the equations for $V$:
$
  (nabla^2 - mu_0 epsilon_0 diff^2/(diff t^2))V + diff/(diff t)(nabla dot bold(A) + mu_0 epsilon_0 (diff V)/(diff t)) = \
  = nabla^2V - mu_0 epsilon_0 (diff^2 V)/(diff t^2) + (diff(nabla dot bold(A)))/(diff t) + mu_0 epsilon_0 (diff^2 V)/(diff t^2) = \
  = nabla^2 V + diff/(diff t)(nabla dot bold(A)) = - 1/epsilon_0 rho "#"
$
and for $bold(A)$:
$
  (nabla^2 - mu_0 epsilon_0 diff^2/(diff t^2))bold(A) - nabla(nabla dot bold(A) + mu_0 epsilon_0 (diff V)/(diff t)) = \
  = (nabla^2bold(A) - mu_0 epsilon_0 (diff^2 bold(A))/(diff t^2)) - nabla(nabla dot bold(A) + mu_0 epsilon_0 (diff V)/(diff t)) = -mu_0 bold(J) "#"
$
]
