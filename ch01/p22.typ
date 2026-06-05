#import "@local/elektroedde:0.1.0": *
#show: problem

=
#neq(
  $
    vu(r) = vb(r)/r = (x vu(x) + y vu(y) + z vu(z))/sqrt(x^2 + y^2 + z^2)
  $
)<eq21>
(a) If $vb(A)$ and $vb(B)$ are two vector functions, what does the expression $(vb(A) dot grad)vb(B)$ mean? (That is, what are its $x, y, "and" z$ components, in terms of the Cartesian components of $vb(A), vb(B), "and" grad$?)

(b) Compute $(vu(r) dot grad)vu(r)$, where $vu(r)$ is the unit vector defined in @eq21

(c) For the functions in Prob. 1.15,
$
  bold(v)_a = x^2 vu(x) + 3x z^2 vu(y) - 2x z vu(z)\

  bold(v)_b = x y vu(x) + 2 y z vu(y) + 3 x z vu(z)
$ evaluate $(vb(v)_a dot grad)vb(v)_b$

#solution[
The definition of the gradient, $grad$, is
$
  grad = pdv(,x)vu(x) + pdv(,y)vu(y) + pdv(,z)vu(z)
$
This gives the dot product between $vb(A) "and" grad$
$
  vb(A) dot grad = (A_x vu(x) + A_y vu(y) + A_z vu(z)) dot (pdv(,x)vu(x) + pdv(,y)vu(y) + pdv(,z)vu(z)) =\
  = A_x pdv(,x) + A_y pdv(,y) + A_z pdv(,z)
$
Now multiply by $vb(B)$ on the right side
$
  (vb(A) dot grad)vb(B) = (A_x pdv(,x) + A_y pdv(,y) + A_z pdv(,z))vb(B) = \
  = A_x pdv(vb(B),x)+A_y pdv(vb(B),y) + A_z pdv(vb(B),z)
$
What this means then, is the derivative of $vb(B)$ in the direction of $vb(A)$. Physically, if you think about yourself standing in a vector field $vb(B)$, and taking a small step in the direction of $vb(A)$, the change you experience in $vb(B)$ is proportional to $(vb(A) dot grad)vb(B)$.

(b) Using the result from (a), we get 
$
  (vu(r) dot grad)vu(r) = r_x pdv(vu(r),x) + r_y pdv(vu(r),y) + r_z pdv(vu(r),z)
$
Starting with the $x$-component:
$
  r_x pdv(vu(r),x) = x /sqrt(x^2 + y^2 + z^2) pdv(,x) ((x vu(x) + y vu(y) + z vu(z))/sqrt(x^2 + y^2 + z^2)) = \
  =x /sqrt(x^2 + y^2 + z^2) pdv(,x) ((x vu(x) + y vu(y) + z vu(z))/sqrt(x^2 + y^2 + z^2)) 
  $
  Using the quotient derivative rule on the $x$-component and regular derivative on the $y"- and" z$-components
  $
  pdv(,x) (x/sqrt(x^2+y^2+z^2)) = ((sqrt(x^2 + y^2 + z^2) - x (2 x)/(2sqrt(x^2 + y^2 + z^2) ))/(x^2 + y^2 + z^2)) =\
  = 1/sqrt(x^2+y^2+z^2) -x^2/sqrt(x^2+y^2+z^2)^3 = (y^2+z^2)/sqrt(x^2+y^2+z^2)^3\
  \
  pdv(,x)(y/sqrt(x^2+y^2+z^2)) = -( x y)/( sqrt(x^2+y^2+z^2)^3)\
  \
  pdv(,x)(z/sqrt(x^2+y^2+z^2)) = -( x z)/( sqrt(x^2+y^2+z^2)^3)
$
The final form of the $x$-component is then
$
  r_x pdv(,x)vu(r) = x/sqrt(x^2+y^2+z^2)(y^2 + z^2 - x y - x z)/sqrt(x^2+y^2+z^2)^3
$
Doing the same calculations on the $y$-component gives
$
  r_y pdv(,y)vu(r) = y/sqrt(x^2+y^2+z^2)(x^2 + z^2 - y x - y z)/sqrt(x^2+y^2+z^2)^3
$
and on the $z$-component
$
  r_z pdv(,z)vu(r) = z/sqrt(x^2+y^2+z^2)(x^2 + y^2 - z x - z y)/sqrt(x^2+y^2+z^2)^3
$
Adding them all up gives
$
  ((x y^2 + x z^2 - x^2 y - x^2 z)+(y x^2 + y z^2 - y^2 x - y^2 z) + (z x^2 + z y^2 - z^2 x - z^2 y))/(x^2+y^2+z^2)^2 =\
  = ((x y^2 - y^2 x)+(x z^2 - z^2 x)+(y x^2 - x^2 y)+(y z^2 - z^2 y)+(z x^2 - x^2 z) + (z y^2 - y^2 z))/(x^2+y^2+z^2)^2 = 0\
  arrow.b\
  ans((vu(r) dot grad)vu(r) = 0)
$

(c)
$
  bold(v)_a = x^2 vu(x) + 3x z^2 vu(y) - 2x z vu(z)\

  bold(v)_b = x y vu(x) + 2 y z vu(y) + 3 x z vu(z)
$
$
  (vb(v)_a dot grad)vb(v)_b = v_(a x)pdv(vb(v)_b,x) + v_(a y)pdv(vb(v)_b,y) +v_(a z)pdv(vb(v)_b,z) = \
  = x^2(y vu(x) + 3z vu(z)) + 3x z^2(x vu(x) + 2z vu(y)) - 2x z(2 y vu(y) + 3 x vu(z)) = \
  = x^2(y + 3 z^2)vu(x) + 2x z(3 z^2 - 2 y )vu(y) -(3x^2 z) vu(z)

$

]