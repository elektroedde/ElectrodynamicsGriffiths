#import "@local/elektroedde:0.1.0": *
#show: problem

=
A thick spherical shell carries charge density
$
  rho = k/r^2cm (a <= r <= b)
$
Find the electric field in the following three regions:

$"(i)" r < a cm "(ii)" a < r < b cm "(iii)" r > b$

Plot $abs(vb(E))$ as a function of $r$, for the case $b = 2a$.

#solution[
  Inside region (i), there is no enclosed charge, therefore the electric field is zero in this region. 
  In region (ii), we construct a spherical Gaussian surface, and integrate the charge density from $a$ to $r$ ($a < r < b$)
  $
    integral.cont vb(E) dot dd(vb(a)) = 1/epsilon_0 Q_("enc")\
    arrow.b\
    integral_0^pi integral_0^(2 pi) E r^2 sin theta dd(theta,phi) = 1/epsilon_0 integral_a^r integral_0^pi integral_0^(2pi) k/r^2 r^2 sin theta dd(r,theta,phi)\
    arrow.b\
    E r^2 4 pi = (k 4 pi)/epsilon_0 (r-a)\
    arrow.b\
    E = (k(r-a))/(r^2 epsilon_0)\
    arrow.b\
    vb(E) = (k(r-a))/(r^2 epsilon_0) vu(r)
  $

  In region (iii), the total charge enclosed is obtained by integrating the charge density. We get the same result as in (ii) but now $(r-a) arrow (b-a)$ since the integral is taken from $a "to" b$.
  $
    vb(E) = k(b - a)/(r^2 epsilon_0)cm r > b
  $

  #figure(image("p16.png"))
]