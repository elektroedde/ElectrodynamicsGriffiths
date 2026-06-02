#import "../template.typ": *
#show: problem

=
Sketch the vector function
$
  bold(v) = bh(r)/r^2,
$
and compute its divergence.

#solution[
  The divergence of the r-component in spherical coordinates is 
  $
    nabla dot bold(v) = 1/r^2 pdv(, r)(r^2 v_r)
  $

  Using this, the divergence is $nabla dot bold(v) = 0$. From the sketch, clearly the divergence is not 0 at the origin. The problem arises at the point $bold(r) = 0$ where $bold(v) arrow infinity$. At all other points $bold(r) eq.not 0$, the divergence is $0$.
  #figure(image("p16.png", width: 75%), caption: [Sketch of the function $bold(v) = bh(r)/r^2$])
]