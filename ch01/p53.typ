#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Which of the vectors in Problem 1.15 can be expressed as the gradient of a
scalar? Find a scalar function that does the job.

(b) Which can be expressed as the curl of a vector? Find such a vector.

$bold(v)_a = x^2 vu(x) + 3x z^2 vu(y) - 2x z vu(z)$

$bold(v)_b = x y vu(x) + 2 y z vu(y) + 3 x z vu(z)$

$bold(v)_c = y^2vu(x) + (2x y + z^2) vu(y) + 2y z vu(z)$

#solution[
  (a) 
  $
    curl vb(v)_a != 0\
    curl vb(v)_b != 0\
    curl vb(v)_c = 0
  $
  This means $vb(v)_c$ can be expressed as the gradient of a scalar.
   We want
   $
     vb(v)_c = grad f = pdv(f,x)vu(x) + pdv(f,y)vu(y) + pdv(f,z)vu(z)\
     pdv(f,x) = y^2 arrow f = y^2 x + rho(y,z)\
      pdv(f,y) = (2x y + z^2) arrow f = (x y^2 + y z^2) + rho(x,z)\
       pdv(f,z) = 2 y z arrow f = y z^2 + rho(x, y)\
       arrow.b\
       rho(x,y) = x y^2cm rho(x,z) = 0 cm rho(y,z) = y z^2cm\
       arrow.b\
       ans(f = x y^2 + y z^2)
   $

   (b) 
   $
     div vb(v)_a = 0\
     div vb(v)_b != 0\
     div vb(v)_c != 0
   $
   This means $vb(v)_a$ can be expressed as the curl of a vector. We want
   $
     &(pdv(V_z,y)-pdv(V_y,z)) = x^2\
     &(pdv(V_x, z) - pdv(V_z,x)) = 3 x z^2\
     &(pdv(V_y,x)- pdv(V_x,y)) = -2x z\
$
Setting $V_x = 0$ gives
$
    (pdv(V_z,y)-pdv(V_y,z)) = x^2\
       pdv(V_z,x) = -3 x z^2 arrow V_z = -3/2 x^2 z^2\
      pdv(V_y,x)= -2x z arrow V_y = - x^2  z\
     arrow.b\
     ans(&vb(V) = (-  x^2 z)vu(y) + (-3/2 x^2 z^2)vu(z))
   $
]