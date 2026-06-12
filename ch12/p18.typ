#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Write out the matrix that describes a Galilean transformation.

(b) Write out the matrix describing a Lorentz transformation along the $y$-axis.

(c) Find the matrix describing a Lorentz transformation with velocity $v$ along the $x$-axis followed by a Lorentz transformation with velocity $ol(v)$ along the $y$-axis.
Does it matter in what order the transformations are carried out?

#solution[
  (a) Mapping the time variable $t arrow c t$ and setting $beta = v/c$ gives the Galilean transformation
$
  mat(c ol(t);ol(x);ol(y);ol(z)) = mat(1, 0, 0, 0;-beta,1,0,0;0,0,1,0;
  0,0,0,1) mat(c t;x;y;z)
$

(b) 
$
  mat(c ol(t);ol(x);ol(y);ol(z)) = mat(gamma, 0, -gamma beta, 0;0,1,0,0;-gamma beta,0,gamma,0;
  0,0,0,1) mat(c t;x;y;z)
$

(c) 
First writing out the transformation with velocity $v$ along the $x$-axis, setting $beta = v/c$
$
   Lambda_x =mat(gamma, -gamma beta, 0,0;-gamma beta,gamma,0,0;0,0,1,0;
  0,0,0,1) 
$
And now with velocity $ol(v)$ in the $y$-axis, with $ol(beta) = ol(v)/c$, $ol(gamma) = 1/sqrt(1-ol(beta)^2)$
$
  Lambda_y = mat(ol(gamma), 0, -ol(gamma) ol(beta), 0;0,1,0,0;-ol(gamma) ol(beta),0,ol(gamma),0;
  0,0,0,1)
$

Transforming first along the $x$-axis and then the $y$-axis gives the matrix
$
  Lambda_y Lambda_x = mat(ol(gamma), 0, -ol(gamma) ol(beta), 0;0,1,0,0;-ol(gamma) ol(beta),0,ol(gamma),0;
  0,0,0,1) mat(gamma, -gamma beta, 0,0;-gamma beta,gamma,0,0;0,0,1,0;
  0,0,0,1) = mat(ol(gamma)gamma,-ol(gamma)gamma beta,-ol(gamma)ol(beta),0;-gamma beta ,gamma,0,0;-ol(gamma)ol(beta)gamma,ol(gamma)ol(beta)gamma beta ,ol(gamma),0;0,0,0,1)
$

Doing it the other way around gives another matrix:

$
   Lambda_x Lambda_y = mat(gamma, -gamma beta, 0,0;-gamma beta,gamma,0,0;0,0,1,0;
  0,0,0,1)mat(ol(gamma), 0, -ol(gamma) ol(beta), 0;0,1,0,0;-ol(gamma) ol(beta),0,ol(gamma),0;
  0,0,0,1) = mat(gamma ol(gamma),-gamma beta,-gamma ol(gamma)ol(beta),0;-gamma beta ol(gamma),gamma,gamma beta ol(gamma)ol(beta),0;-ol(gamma)ol(beta),0,ol(gamma),0;0,0,0,1)
$
and we see that $Lambda_y Lambda_x != Lambda_x Lambda_y$

]