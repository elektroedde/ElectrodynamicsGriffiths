#import "@local/elektroedde:0.1.0": *
#show: problem

=
Use Gauss's law to find the electric field inside a uniformly charged solid sphere (charge density $rho$).

#solution[
  For our Gaussian surface, we will use the surface of a sphere. Gauss's law is
  $
    integral.cont vb(E) dot dd(vb(a)) = 1/epsilon_0 Q_("enc")
  $
  While our Gaussian surface is inside the uniformly charged sphere, the charged enclosed is the volume integral of the charge density, where the volume is a sphere. Let $a$ be the radius of our Gaussian surface.
  $
    E a^2 integral_0^pi integral_0^(2 pi)  sin theta dd(theta,phi) = 1/epsilon_0 integral_0^a integral_0^pi integral_0^(2pi) rho r^2 sin theta dd(r,theta,phi)\
    arrow.b\
    E a^2 4 pi = (rho a^3 4 pi)/(3epsilon_0 )\
    arrow.b\
    vb(E) = (rho a)/(3 epsilon_0) vu(r)
  $
]