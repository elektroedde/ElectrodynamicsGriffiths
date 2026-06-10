#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field inside a sphere that carries a charge density proportional to the distance from the center, $rho = k r$, for some constant $k$.

#solution[
  The Gaussian surface for this problem is the surface of a sphere. The enclosed charge is obtained by integrating the charge density. Let $r$ be the radius of our Gaussian surface, that is, $r: 0 arrow R$, where $R$ is the radius of the charged sphere. Gauss's law becomes
  $
    integral.cont vb(E) dot dd(vb(a)) = 1/epsilon_0 Q_("enc")\
    arrow.b\

    integral_0^pi integral_0^(2pi) E r^2 sin theta dd(theta,phi) = 1/epsilon_0 integral_0^r integral_0^pi integral_0^(2 pi) k r^3 sin theta dd(r,theta,phi)\
    arrow.b\
    E r^2 4 pi =(k r^4 4 pi)/(4 epsilon_0)\
    arrow.b\
    E = (k r^2)/(4 epsilon_0)\
    arrow.b\
    ans(vb(E) = (k r^2)/(4 epsilon_0) vu(r))
  $
]