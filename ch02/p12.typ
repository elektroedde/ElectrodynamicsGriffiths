#import "@local/elektroedde:0.1.0": *
#show: problem

=
Use Gauss's law to find the electric field inside and outside a spherical shell of radius $R$ that carries a uniform surface charge density $sigma$. 

#solution[
  Gauss's law states that the closed surface integral of the electric field is equal to the charge enclosed in that surface.
  $
    integral.cont vb(E) dot dd(vb(a)) = 1/epsilon_0 Q_("enc")
  $

  Using the Gaussian surface of a sphere, the charge enclosed inside the spherical shell is zero, and outside it is 
  $
    Q_("enc") = 4 pi R^2 sigma
  $

  The electric field is always directed towards $vu(r)$ and $dd(vb(a)) = r^2 sin theta dd(theta,phi)$ gives
  $
    E r^2 4 pi = (4 pi R^2 sigma)/epsilon_0\
    arrow.b\
    ans(vb(E) = (R^2 sigma)/(epsilon_0 r^2) vu(r)cm r>R)
  $
  where $R$ is the radius of the spherical shell and $r$ is the distance from the center
]