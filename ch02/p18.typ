#import "@local/elektroedde:0.1.0": *
#show: problem

=
An infinite plane slab, of thickness $2d$, carries a uniform volume
charge density $rho$ (FIGURE). Find the electric field, as a function of $y$, where $y= 0$
at the center. Plot $E$ versus $y$, calling $E$ positive when it points in the $+y$ direction
and negative when it points in the $−y$ direction.

#solution[
  We create a Gaussian surface as a box. The enclosed charge is simply the box area $A$ times the position $y$
  $
    integral.cont_cal(S) vb(E) dot dd(vb(a)) = 1/epsilon_0 Q_("enc")\
    2 E A  = 1/epsilon_0 rho 2 d A\
    $
    $
    &vb(E) = (rho d)/epsilon_0 vu(y)cm &&y > 0\
    &vb(E) = (rho d)/epsilon_0 (-vu(y))cm &&y < 0\

  $
  Inside:
  $
    2 E A = 1/epsilon_0 rho 2 y A\
    vb(E) = (rho y)/epsilon_0 vu(y)

  $
]