#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field a distance $s$ from an infinitely long straight wire that carries a uniform line charge $lambda$.

#solution[
  The Gaussian surface for this problem is a cylinder. The enclosed charge of this cylinder is
  $
    Q_("enc") = lambda z
  $
  where $z$ is the height of the cylinder. The top and bottom disks of the cylinder are not accounted for since the field there is zero due to symmetry. Gauss's law becomes
  $
    integral.cont vb(E) dot dd(vb(a)) = (lambda z)/epsilon_0\
    arrow.b\
    integral_0^z integral_0^(2pi) E s dd(phi,theta) = (lambda z)/epsilon_0\
    arrow.b\
    E s z 2 pi = (lambda z)/epsilon_0\
    arrow.b\
    E =(lambda)/(2 pi s epsilon_0)\
    arrow.b\
    vb(E) = (lambda)/(2 pi s epsilon_0) vu(s)

  $
]