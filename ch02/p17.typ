#import "@local/elektroedde:0.1.0": *
#show: problem

=
A long coaxial cable carries a uniform volume charge density $rho$ on the inner cylinder (radius $a$), and a uniform surface charge density on
the outer cylindrical shell (radius $b$). This surface charge is negative and is of just
the right magnitude that the cable as a whole is electrically neutral. Find the electric
field in each of the three regions: 

(i) inside the inner cylinder ($s < a$), 

(ii) between
the cylinders ($a < s < b$), 

(iii) outside the cable ($s > b$). 

Plot $abs(vb(E))$ as a function of $s$.

#solution[
  Using a cylindrical Gaussian surface gives for region (i)
  $
    integral.cont vb(E) dot dd(vb(a)) = Q_("enc")\
    arrow.b\
    E 2 pi s z = 1/epsilon_0 integral_0^a rho s dd(s,phi,z)\
    arrow.b\
    E 2 pi s z = (rho s^2 2 pi z)/(2 epsilon_0)\
    arrow.b\
    E = (rho s)/(2 epsilon_0)\
    arrow.b\
    vb(E) = (rho s)/(2 epsilon_0) vu(s)cm s < a
  $

  In region (ii), the total enclosed charge is the charge density multiplied by the volume, which is
  $
    Q_("enc") = rho pi a^2 z
  $
  which gives the electric field
  $
    E 2 pi s z = (rho pi a^2 z)/(epsilon_0)\
    arrow.b\
    vb(E) = (rho a^2)/(2 epsilon_0 s) vu(s)cm a < s < b
  $

  In region (iii), the total charge is zero since the positive and negative parts cancel,
  $
    vb(E) = 0cm s > b
  $

  #figure(image("p17.png"))
]