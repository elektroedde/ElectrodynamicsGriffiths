#import "@local/elektroedde:0.1.0": *
#show: problem

=
Define proper acceleration in the obvious way:
$
  alpha^mu eq.triple dv(eta^mu, tau) = dv(x^mu, tau, 2)
$

(a) Find $alpha^0$ and $vb(alpha)$ in terms of $vb(u)$ and $vb(a)$ (the ordinary acceleration).

(b) Express $alpha_mu alpha^mu$ in terms of $vb(u)$ and $vb(a)$.

(c) Show that $eta^mu alpha_mu$ = 0.

(d) Write the Minkowski version of Newton's second law,
$
  K^mu eq.triple dv(p^mu, tau) 
$ 
in terms of $alpha^mu$. Evaluate the invariant product $K^mu eta_mu$.

#solution[
  $
    alpha^0 = dv(eta^0, tau) = dv(x^0, tau, 2)\
    eta^0 = c/sqrt(1-(vb(u) dot vb(u))/c^2)
  $
  $
    dd(tau) = sqrt(1-u^2/c^2)dd(t)
  $
  $
    dv(eta^0, tau) = dv(eta^0, t) dv(t, tau) = 1/sqrt(1-u^2/c^2) dv(eta^0, t)
  $
  $
    dv(eta^0, t) = (vb(u) dot vb(u)')/c 1/sqrt(1-u^2/c^2)^3
  $
  $
    ans(alpha^0 = (vb(u) dot vb(a))/(c (1-u^2/c^2)^2))
  $

  $
    vb(alpha) = dv(vb(eta),tau) = dv(vb(eta),t) dv(t, tau)\
    vb(eta) = 1/sqrt(1-(vb(u)dot vb(u))/c^2)vb(u) = gamma vb(u)\
    dv(vb(eta),t) = (gamma vb(u))' = gamma' vb(u) + gamma vb(u)'
  $
  We have
  $
    gamma' = (vb(u) dot vb(u)')/(c^2 sqrt(1-u^2/c^2)^3)
  $
  $
    gamma' vb(u) + gamma vb(u)' = (vb(u)(vb(u) dot vb(a))/(c^2 sqrt(1-u^2/c^2)^3) + 1/sqrt(1-u^2/c^2)vb(a)) = 1/sqrt(1-u^2/c^2)(vb(a) + (vb(u)(vb(u) dot vb(a)))/(c^2 - u^2)) = dv(vb(eta),t)
      $

    Now
    $
      vb(alpha) = dv(vb(eta),t)dv(t, tau) = 1/sqrt(1-u^2/c^2)(vb(a) + (vb(u)(vb(u) dot vb(a)))/(c^2 - u^2)) 1/sqrt(1-u^2/c^2) = 1/(1-u^2/c^2)(vb(a) + (vb(u)(vb(u) dot vb(a)))/(c^2 - u^2)) 
    $

    So
    $
      ans(alpha^0 = (vb(u) dot vb(a))/(c (1-u^2/c^2)^2) \
      vb(alpha) = 1/(1-u^2/c^2)(vb(a) + (vb(u)(vb(u) dot vb(a)))/(c^2 - u^2)) )
    $


#box(
  fill: rgb("#ff9999"),
  stroke: 0.8pt + rgb("#ff0000"),
    inset: (x: 5pt, y: 10pt),
  radius: 3pt, )[(b) Incomplete

$
  alpha_mu alpha^mu = -(alpha^0)^2 + vb(alpha) dot vb(alpha)
$
]

(c) We will use
$
  alpha^mu = dv(eta^mu, tau)cm eta^mu eta_mu = -c^2
$
Taking the derivative of $eta^mu eta_mu$
$
  dv(,tau)(eta^mu eta_mu) = dv(,tau)(-c^2) = 0\
  arrow.b\
  dv(eta^mu, tau) eta_mu + eta^mu dv(eta_mu, tau) = alpha^mu eta_mu + eta^mu alpha_mu
$
We also have
$
  alpha^mu eta_mu = eta^mu alpha_mu
$
so this gives
$
  2 eta^mu alpha_mu = 0 \
  arrow.b\ ans(eta^mu alpha_mu = 0)
$
]