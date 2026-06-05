#import "@local/elektroedde:0.1.0": *
#show: problem

=
Prove the product rules

$
&"(i)" &&nabla (f g) = f nabla g + g nabla f \

&"(iv)" &&nabla dot (bold(A) times bold(B)) = bold(B) dot (nabla times bold(A)) - bold(A) dot (nabla times bold(B))\

&"(v)" &&nabla times(f bold(A)) = f(nabla times bold(A)) - bold(A) times (nabla f)
$

#solution[
  (i)
  $
    grad(f g) = pdv(,x)(f g) vu(x) + pdv(,y)(f g) vu(y) + pdv(,z)(f g) vu(z)\
    arrow.b\
    pdv(,x)(f g)vu(x) = [g pdv(f,x) + f pdv(g, x)]vu(x)\
    pdv(,y)(f g)vu(y) = [g pdv(f,y) + f pdv(g, y)]vu(y)\
    pdv(,z)(f g)vu(z) = [g pdv(f,z) + f pdv(g, z)]vu(z)\
    arrow.b\
    ans(grad(f g) = f grad g + g grad f)
  $

  (iv) Expand the cross product $vb(A) times vb(B)$ and the curls $curl vb(A), curl vb(B)$
  $
    vb(A) times vb(B) = mdet(vu(x),vu(y),vu(z);A_x, A_y, A_z;B_x, B_y, B_z) = (A_y B_z - A_z B_y)vu(x) + (A_z B_x - A_x B_z)vu(y) + (A_x B_y - A_y B_x)vu(z)\
    \
    \
    curl vb(A) = mdet(vu(x),vu(y),vu(z);pdv(,x),pdv(,y),pdv(,z);A_x, A_y, A_z) = curldef(A)\
    curl vb(B) = mdet(vu(x),vu(y),vu(z);pdv(,x),pdv(,y),pdv(,z);B_x, B_y, B_z) = curldef(B)
  $

  Now the divergence of $vb(A) times vb(B)$ is
  $
    div (vb(A) times vb(B)) = pdv(,x)(A_y B_z - A_z B_y) + pdv(,y)(A_z B_x - A_x B_z) + pdv(,z)(A_x B_y - A_y B_x) =\
    \
    \
    = B_z pdv(A_y,x) + A_y pdv(B_z, x) - B_y pdv(A_z,x) - A_z pdv(B_y, x) +\
    + B_x pdv(A_z,y) + A_z pdv(B_x, y) - B_z pdv(A_x,y) - A_x pdv(B_z, y) +\
    + B_y pdv(A_x,y) + A_x pdv(B_y, y) - B_x pdv(A_y,y) - A_y pdv(B_x, y)
  $
  while 
  $
    vb(B) dot (curl vb(A)) = B_x (pdv(A_z,y)-pdv(A_y,z)) + B_y (pdv(A_x,z)-pdv(A_z,x)) + B_z (pdv(A_y,x)-pdv(A_x,y))\
    \
    vb(A) dot (curl vb(B)) = A_x (pdv(B_z,y)-pdv(B_y,z)) + A_y (pdv(B_x,z)-pdv(B_z,x)) + A_z (pdv(B_y,x)-pdv(B_x,y))
  $

  Taking rule (iv) and matching the terms containing $pdv(,x),pdv(,y),pdv(,z):$
  $
  div (vb(A) times vb(B)) = vb(B) dot (curl vb(A)) - vb(A) dot (curl vb(B))\
  arrow.b\
  $
  $
    &B_z pdv(A_y,x) + A_y pdv(B_z, x) - B_y pdv(A_z,x) - A_z pdv(B_y, x) = -B_y pdv(A_z,x)+B_z pdv(A_y,x) -(- A_y pdv(B_z,x)+A_z pdv(B_y,x)) checkmark \
    \
    &B_x pdv(A_z,y) + A_z pdv(B_x, y) - B_z pdv(A_x,y) - A_x pdv(B_z, y) = B_x pdv(A_z,y) - B_z pdv(A_x,y) - (A_x pdv(B_z,y) - A_z pdv(B_x,y)) checkmark\
    \
    &B_y pdv(A_x,y) + A_x pdv(B_y, y) - B_x pdv(A_y,y) - A_y pdv(B_x, y) = -B_x pdv(A_y,z) + B_y pdv(A_x,z) - (-A_x pdv(B_y,z) + A_y pdv(B_x,z)) checkmark
  $ 

  (v) Expanding the first term $curl (f vb(A))$:
  $
    curl (f vb(A)) = curldef(f A) =
    $
    $
    = &(f pdv(A_z,y) + A_z pdv(f, y) - f pdv(A_y,z) - A_y pdv(f,z))vu(x) + \
    + &(f pdv(A_x,z) + A_x pdv(f, z) - f pdv(A_z,x) - A_z pdv(f,x))vu(y) + \
    + &(f pdv(A_y,x) + A_y pdv(f, x) - f pdv(A_x,y) - A_x pdv(f,y))vu(z) \
  $
  Expanding the second term $f (curl vb(A))$:
  $
    \
    \
    f(curl vb(A)) = f [curldef(A)]
  $
  Expanding the third term $vb(A) times (grad f)$
  $
    vb(A) times (grad f) = vb(A) times (pdv(f,x)vu(x) + pdv(f,y)vu(y) + pdv(f,z)vu(z)) = mdet(vu(x),vu(y),vu(z);A_x, A_y, A_z;pdv(f,x),pdv(f,y),pdv(f,z)) =\
    = (A_y pdv(f,z) - A_z pdv(f,y))vu(x) + (A_z pdv(f,x) - A_x pdv(f,z))vu(y) + (A_x pdv(f,y) - A_y pdv(f,x))vu(z)
  $
  Now match each component of both sides $vu(x),vu(y),vu(z)$:
  $
    nabla times(f bold(A)) = f(nabla times bold(A)) - bold(A) times (nabla f)\
    arrow.b\
    $


$
(f pdv(A_z,y) + A_z pdv(f,y) - f pdv(A_y,z) - A_y pdv(f,z))vu(x) = f(pdv(A_z,y)-pdv(A_y,z))vu(x) - (A_y pdv(f,z) - A_z pdv(f,y))vu(x) space checkmark
$


$

lr((f pdv(A_x,z) + A_x pdv(f,z) - f pdv(A_z,x) - A_y pdv(f,x)),size:#120%)vu(y) = f lr((pdv(A_x,z)-pdv(A_z,x)),size:#120%)vu(y) - (A_z pdv(f,x) - A_x pdv(f,z))vu(x) space checkmark
$

$
(f pdv(A_y,x) + A_y pdv(f,x) - f pdv(A_x,y) - A_x pdv(f,y))vu(z) = f(pdv(A_y,x)-pdv(A_x,y))vu(z) - (A_x pdv(f,y) - A_y pdv(f,x))vu(z) space checkmark
$


]

