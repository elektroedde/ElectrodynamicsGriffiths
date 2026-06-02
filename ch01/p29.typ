#import "../template.typ": *
#show: problem

=
Calculate the line integral of the function $bold(v) = x^2 bh(x) + 2y z bh(y) + y^2 bh(z)$ from the origin to the point $(1, 1, 1)$ by three different routes:

(a) $(0,0,0) arrow (1,0,0) arrow (1,1,0) arrow (1,1,1)$

(b) $(0,0,0) arrow (0,0,1) arrow (0,1,1) arrow (1,1,1)$

(c) The direct straight line

(d) What is the line integral around the closed loop that goes out along path (a) and back along path (b)?

#solution[
  The line integral has the from
  $
    integr(a,b, bold(v)dot, bold(l))
  $
  where $d bold(l) = d x bh(x) + d y bh(y) + d z bh(z)$

  (a) 
  
  $(0,0,0) arrow (1,0,0)$ has $d bold(l) = d x bh(x)$ and $x":" 0 arrow 1, y=0, z=0$. 

   $(1,0,0) arrow (1,1,0)$ has $d bold(l) = d y bh(y)$ and $y":" 0 arrow 1, x=1, z=0$. 

   $(1,1,0) arrow (1,1,1)$ has $d bold(l) = d z bh(z)$ and $z":" 0 arrow 1, x=1, y=1$. 
  $
    integr(0, 1, x^2, x) + integr(0, 1,2y z, y) + integr(0, 1, y^2, z) = integr(0, 1, x^2, x) + integr(0, 1, 1, z) = 1/3 + 1 = ans(4/3)
  $

  (b) 

  $(0,0,0) arrow (0,0,1)$ has $dif bold(l) = dif z bh(z)$ and $z":" 0 arrow 1, x=0, y=0$. 

   $(0,0,1) arrow (0,1,1)$ has $dif bold(l) = dif y bh(y)$ and $y":" 0 arrow 1, x=0, z=1$. 

   $(0,1,1) arrow (1,1,1)$ has $dif bold(l) = dif x bh(x)$ and $x":" 0 arrow 1, y=1, z=1$.

   $
     integr(0, 1, y^2,z) + integr(0, 1, 2 y z, y) + integr(0, 1, x^2 , x) = integr(0, 1, 2y, y) + integr(0, 1, x^2, x) = 1 + 1/3 = ans(4/3)
   $ 

   (c) The direct straight line is obtained by setting $x = y = z = t$ and letting $t":" 0 arrow 1$. Also, $dif bold(l) = dif t bh(t)$, giving $bold(v) dot dif bold(l) = 4t^2 dif t$.
   $
     integr(0, 1, 4t^2, t) = ans(4/3)
   $

   (d) Since the result of the line integral of $bold(v)$ is independent of the path, going from the origin to the point $(1,1,1)$ via the path in (a), and then from the point $(1,1,1)$ to the origin via the path in (b) gives

   $
     underbrace(integr(0,1,x^2, x) + integr(0, 1, 1, z), (a)) - [underbrace(integr(1, 0, 2y, y) + integr(1, 0, x^2, x), (b) "in reverse")] = ans(4/3 - 4/3 = 0)
   $

]