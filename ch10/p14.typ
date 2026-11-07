#import "@local/elektroedde:0.1.0": *
#show: problem

=
Show that the Biot-Savart law holds, with $vb(J)$ evaluated at the nonretarded time, considering only the first two terms in the Taylor expansion for $vb(J)$ is
  $
    vb(J)(t_r) = vb(J)(t) + (t_r - t)dot(vb(J))(t) + dots
  $

  where the $vb(r)$ dependence in $vb(J)(vb(r),t_r)$ has been omitted for compactness.
#solution[
$
  vb(B)(vb(r),t) = mu_0/(4 pi) integral [(vb(J)(vb(r)',t_r))/scrr^2 + (dot(vb(J))(vb(r)', t_r))/(c scrr)] times hscrr dd(tau')
$<p14-a>

We use the given Taylor expansion on the first term in @p14-a:
$
  vb(J)(t_r) = vb(J)(t) + (t_r - t)dot(vb(J))(t)
$

$
  t_r = t - scrr/c arrow t_r - t = -scrr/c\
  arrow.b\
    vb(J)(t_r) = vb(J)(t) - scrr/c dot(vb(J))(t)\
    arrow.b
$
$
  (vb(J)(t_r))/scrr^2 = (vb(J)(t))/scrr^2 -  (dot(vb(J))(t))/(c scrr)
$<p14-b>

and on the second term of @p14-a:
$
  dot(vb(J))(t_r) = dot(vb(J))(t) + (t_r-t)diaer(vb(J))(t)
$
But since all higher order terms are neglected, $diaer(vb(J))(t) = 0$ so
$
  dot(vb(J))(t_r)= dot(vb(J))(t)
$<p14-c>

Putting @p14-b and @p14-c into @p14-a gives

$
  vb(B)(vb(r),t) = mu_0/(4 pi) integral [(vb(J)(vb(r)',t))/scrr^2 - (dot(vb(J))(vb(r)',t))/(c scrr) + (dot(vb(J))(vb(r)',t))/( c scrr)] times hscrr dd(tau')\
  arrow.b\
  vb(B)(vb(r),t) = mu_0/(4 pi) integral (vb(J)(vb(r)',t))/scrr^2 times hscrr dd(tau')
$
]