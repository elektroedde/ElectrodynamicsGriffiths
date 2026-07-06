#import "@local/elektroedde:0.1.0": *
#show: problem

=
A steady current $I$ flows down a long cylindrical wire of radius $a$ (Fig. 5.40). Find the magnetic field, both inside and outside the wire, if

(a) The current is uniformly distributed over the outside surface of the wire.

(b) The current is distributed in such a way that $J$ is proportional to $s$, the distance from the axis.

#solution[
  Amperian loop
  $
    integral.cont vb(B) dot dd(vb(l)) = mu_0 I_("enc")
  $
  $
    B s 2 pi = mu_0 I a \
    arrow.b\
    ans(vb(B) = (mu_0 I) / (2 pi s) vu(phi) "outside"\
    vb(B) = 0 "inside (all current on the surface)")
  $

  (b) 
  $
    B 2 pi s = mu_0 2 pi k s^3 1/3\
    B = mu_0 k s^2 /3\

  $

  Now just find $k$
  $
        J = k s arrow I = integral k s s dd(s, phi) = (2 pi k s^3)/3 arrow k = (3I)/(2 pi a^3)\
  $
  and the final answer is 
  $
    ans(vb(B) = (mu_0 I s^2)/(2pi a^3)vu(phi) "inside"\
    vb(B) = (mu_0 I) / (2 pi s) vu(phi) "outside")

    
  $
]