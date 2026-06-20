#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the average potential over a spherical surface of radius $R$ due to a point charge $q$ located inside (same as above, in other words, only with $z < R$).
(In this case, of course, Laplace’s equation does not hold within the sphere.) 
Show that, in general,
$
V_("ave") = V_("center") + Q_("enc")/(4 pi epsilon_0 R)
$
where $V_("center")$ is the potential at the center due to all the external charges, and $Q_("enc")$ is the total enclosed charge.

#solution[
  $
    bscrr = R vu(r) - z vu(z) \
    scrr = sqrt(R^2 + z^2 - 2R z cos theta)
  $

  $
    V_("ave") = 1/(4 pi R^2) q/(4 pi epsilon_0) integral 1/sqrt(R^2 + z^2 - 2 R z cos theta) R^2 sin theta dd(theta, phi)\
    arrow.b\
    V_("ave") = (q R^2 2 pi)/(4 pi R^2 4 pi epsilon_0) [sqrt(R^2 + z^2 - 2 R z cos theta)/(R z)]_0^pi\
    arrow.b\
    V_("ave") = q / (8 pi epsilon_0 R z) [(R+z)-(R-z)]\
    arrow.b\
    ans(V_("ave") = q/(4 pi epsilon_0 R))
  $
  Superposition gives that if there are more charges inside the sphere, $V_("ave")$ is just the total charge ($Q_("enc")$) and therefore the general expression for $V_("ave")$ is the contribution from chares outside ($V_("center")$) and the contribution from charges inside ($V_("inside")$)

]