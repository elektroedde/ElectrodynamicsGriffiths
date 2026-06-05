#import "@local/elektroedde:0.1.0": *
#show: problem

=
Suppose $V=0 "and" vb(A) = A_0 sin(k x -  omega t)vu(y)$, where $A_0, omega, "and" k$ are constants. Find $vb(E) "and" vb(B)$, and check that they satisfy Maxwell's equations in vacuum. What conditions must you impose on $omega "and" k$?

#solution[
Maxwell's equations in vacuum are
$
  "(i)"&div vb(E) = 1/epsilon_0 rho"     " &"(iii)"&curl vb(E) = - pdv(vb(B),t)\
  "(ii)"&div vb(B) = 0  &"(iv)"&curl vb(B) = mu_0 vb(J) + mu_0 epsilon_0 pdv(vb(E),t)
$
where as before we set
$
  &vb(E) = -grad V - pdv(vb(A),t)\
  &vb(B) = curl vb(A)\
$
This gives
$
  &vb(E) =-pdv(vb(A),t) = -omega A_0 cos(k x - omega t)vu(y)\
  &vb(B) = pdv(A_y,x)vu(z) = k A_0 cos(k x - omega t)vu(z)
$
Since $rho = 0$, this directly gives $div vb(E) = 0$. (ii) gives $div vb(B) = 0$.

From (iv) we have the relation, since the current density $vb(J) = 0$,
$
  curl vb(B) = mu_0 epsilon_0 pdv(vb(E),t)\
  arrow.b\

    curl vb(B) = -pdv(B_z,x)vu(y) = k^2 A_0 sin(k x - omega t) vu(y)\

    mu_0 epsilon_0 pdv(vb(E),t) = mu_0 epsilon_0 omega^2 A_0 sin(k x - omega t) vu(y)
$
From this we see that $k^2 = mu_0 epsilon_0 omega^2 arrow k = sqrt(mu_0 epsilon_0) omega arrow k = omega / c$

From (iii) we have the relation
$
  curl vb(E) = -pdv(vb(B),t) \
  arrow.b\
  curl vb(E) = pdv(E_y,x)vu(z) = omega k A_0 sin(k x - omega t)vu(z)\
  -pdv(vb(B),t) = omega k A_0 sin(k x - omega t)vu(z)
$

Equations (i)-(iv) are all verified with the condition $k = omega / c$.

]