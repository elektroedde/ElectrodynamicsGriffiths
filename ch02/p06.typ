#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field a distance $z$ above the center of a flat circular disk of radius $R$ that carries a uniform surface charge $sigma$. What does your formula give in the limit $R arrow infinity$? Also check the case $z >> R$.

#solution[
  The electric field for a surface charge is given by
  $
    vb(E)(vb(r)) = 1/(4 pi epsilon_0) integral_cal(S) sigma(vb(r)')/(r scrr^2) hscrr dd(a')
  $
  Our disk is given by the cylindrical coordinates $s "and" phi$
  $
    s: 0 arrow R cm phi: 0 arrow 2pi
  $
  The integration is
  $
    dd(a') = s  dd(s, phi)
  $
  The separation vector is
  $
    bscrr = z vu(z) - s vu(s)\
    arrow.b\
    scrr  = sqrt(z^2 + s^2)\
    arrow.b\
    hscrr  = (z vu(z) - s vu(s))/sqrt(z^2 + s^2)
  $
  Due to the symmetry of the problem, the $s$-dependence will add up to zero, so we will ignore the $s$-component in the unit separation vector.
  The electric field at the $z$-axis is then
  $
    vb(E)(z) = 1/(4 pi epsilon_0) integral_0^R integral_0^(2pi) (sigma z vu(z))/sqrt(z^2+s^2)^3 s dd(s,phi) =\
    = (2 pi z sigma vu(z))/(4 pi epsilon_0) integral_0^R s/sqrt(z^2+s^2)^3 dd(s) = (2 pi z sigma vu(z))/(4 pi epsilon_0)  [-1/sqrt(z^2+s^2)]_0^R =\
    = (z sigma)/(2 epsilon_0) [1/z - 1/sqrt(z^2+R^2)]vu(z)
  $
  In the limit that $R arrow infinity$, the electric field is given by
  $
    (z sigma)/(2 epsilon_0) [1/z - 1/R]vu(z) = ( sigma)/(2 epsilon_0)vu(z)
  $
  When $z >> R$, naïvely setting the square root term to $1/sqrt(z^2 + R^2) = 1/sqrt(z^2) = 1/z$ would give the (somewhat) incorrect result zero. The square root expression needs to be Taylor expanded with the rule (assuming $abs(x) << 1$)
  $
    (1+x)^n = 1 + n x + (n(n-1))/(2!)x^2 + dots
  $
  Rewriting the square root term
  $
    1/sqrt(z^2 + R^2) = 1/z 1/sqrt(1+R^2/z^2) = 1/z (1 + R^2/z^2)^(-1/2)\
    arrow.b\
    1/sqrt(z^2 + R^2) approx 1/z (1 -1/2 R^2/z^2)
  $
  which gives the electric field
  $
    (z sigma)/(2 epsilon_0) [1/z - 1/z (1- 1/2 R^2/z^2)]vu(z) = (z sigma)/(2 epsilon_0) 1/2 R^2/z^3vu(z)
  $
  Expressing the charge density and the radius in terms of the total charg $Q$ would give $Q = sigma pi R^2$ which results in the electric field
  $
    vb(E)(z) = Q/(4 pi epsilon_0 z^2)vu(z)
  $
]