#import "@local/elektroedde:0.1.0": *
#show: problem
#show math.phi: math.phi.alt
=
Find formulas for $r, theta, phi$ in terms of $x, y, z$.


#solution[
In spherical coordinates we have
$
  &x = r sin theta cos phi\
  &y = r sin theta sin phi\
  &z = r cos theta
$
*$r$-component:*

From Pythagoras we know that $r = sqrt(x^2 + y^2 + z^2) arrow.l.r.long r^2 = x^2 + y^2 + z^2$. This leads us to start with the $r$-component, by squaring each relation and adding them up:

$
  &x^2 = r^2 sin^2 theta cos^2 phi\
  &y^2 = r^2 sin^2 theta sin^2 phi\
  &z^2 = r^2 cos^2 theta
$

$
arrow.b\
  x^2 + y^2 + z^2 = r^2 (sin^2 theta cos^2 phi + sin^2 theta sin^2 phi + cos^2 theta)
$
All the trigonometric functions above should then be equal to one, which is confirmed by rearranging and simplifying
$
  = r^2 (sin^2 theta underbrace((cos^2 phi + sin^2 phi),=1) + cos^2 theta) = r^2 underbrace((sin^2 theta + cos^2 theta),=1) = r^2 \
  arrow.b\
  ans(r = sqrt(x^2 + y^2 + z^2 ))
$

*$theta$-component*:

Since $theta$ is alone in the relation for $z$, we can use $z$ to solve for $theta$. 
Rewriting the term for $z$ leads to
$
  z = r cos theta arrow cos theta = z /r = z / sqrt(x^2 + y^2 + z^2 )\
  arrow.b\
  ans(theta = arccos(z/sqrt(x^2+y^2+z^2)))
$

*$phi$-component:*
The $x "and" y$ components both share a factor of $r sin theta$, which makes the $phi$ component appear by itself if we divide $y "by" x$ (or $x "by" y$)

$
  y/x = (r sin theta sin phi)/(r sin theta cos phi) = (sin phi) / (cos phi) = tan phi \
  arrow.b\
  ans(phi = arctan(y/x))
$

The relations for $r, theta, phi$ in terms of $x,y,z$ are then
$
  ans(&r = sqrt(x^2 + y^2 + z^2)\
  &theta = arccos(z/sqrt(x^2+y^2+z^2))\
  &phi = arctan(y/x))
$
]
