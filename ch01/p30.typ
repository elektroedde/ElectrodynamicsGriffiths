#import "../template.typ": *
#show: problem

=
Calculate the surface integral of the function 
$
  bold(v) = 2x z bh(x) + (x + 2)bh(y) + y(z^2-3)bh(z)
$
over the bottom of the box. For consistency, let "upward" be the positive direction. Does the surface integral depend only on the boundary line for this function? What is the total flux over the closed surface of the box (including the bottom)?

#solution[
  For the bottom of the box, $x,y":" 0 arrow 2$, $z = 0$ and $dif bold(a) = dif x dif y bh(z)$

  $
    integr2(0, 2, 0, 2, -3y, x, y) = integr(0, 2, (integr(0, 2, -3y, y)), x) = integr(0, 2, -6, x) = ans(-12)
  $

  The total outward flux from all faces exluding the bottom was $20$ (result from Ex. 1.7). The resulting total outward flux is then $20 - (-12) = 32$ (since the result from the bottom surface was calculated in the "wrong" direction). The surface integral does not depend only on the boundary line, since the bottom surface shares the boundary line with the combined 5 other surfaces, and the calculations gave different values ($20$ for the 5 surfaces, $-12$ for the bottom surface).

]