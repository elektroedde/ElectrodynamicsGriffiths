#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Show that
$
  integral_cal(S) f(curl vb(A)) dot dd(vb(a)) = integral_cal(S) [vb(A) times (grad f)] dot dd(vb(a)) + integral.cont_cal(P) f vb(A) dot dd(vb(l))
$

(b) Show that
$
  integral_cal(V) vb(B) dot (curl vb(A)) dd(tau) = integral_cal(V) vb(A) dot (curl vb(B)) dd(tau) + integral.cont_cal(S) (vb(A) times vb(B)) dot dd(vb(a))
$

#solution[
  (a) Using product rule (v):
  $
    "(v)" curl (f vb(A)) = f(curl vb(A)) - vb(A) times (grad f)\
    arrow.b\
    f(curl vb(A)) = vb(A) times (grad f) + curl (f vb(A))
  $

  Integrating this expression over a surface $cal(S)$ yields
  $
    integral_cal(S) f(curl vb(A)) dot dd(vb(a)) = integral_cal(S) vb(A) times (grad f) dot dd(vb(a)) + integral_cal(S) curl (f vb(A)) dot dd(vb(a)) space .
  $

  Using Stokes' Theoreom on the last part gives the answer
  $
    ans(integral_cal(S) f(curl vb(A)) dot dd(vb(a)) = integral_cal(S) [vb(A) times (grad f)] dot dd(vb(a)) + integral.cont_cal(P) f vb(A) dot dd(vb(l)))
  $

  (b) Using product rule (iv)
  $
    "(iv)" div (vb(A) times vb(B)) = vb(B) dot (curl vb(A)) - vb(A) dot (curl vb(B))\
    arrow.b\
    vb(B) dot (curl vb(A)) = vb(A) dot (curl vb(B)) + div (vb(A) times vb(B))
  $
  Integrating this expression over a volume $cal(V)$ yields
  $
    integral_cal(V) vb(B) dot (curl vb(A)) dd(tau) = integral_cal(V) vb(A) dot (curl vb(B)) dd(tau) + integral_cal(V) div(vb(A) times vb(B)) dd(tau) space .
  $
  Using Gauss' Theorem / Divergence Theorem on the last part gives the answer
  $
    ans(integral_cal(V) vb(B) dot (curl vb(A)) dd(tau) = integral_cal(V) vb(A) dot (curl vb(B)) dd(tau) + integral.cont_cal(S) (vb(A) times vb(B)) dot dd(vb(a)))
  $
]