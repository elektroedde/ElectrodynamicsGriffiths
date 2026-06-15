#import "@local/elektroedde:0.1.0": *
#show: problem

=
A current $I$ flows down a wire of radius $a$.

(a) If it is uniformly distributed over the surface, what is the surface current density $K$ ?

(b) If it is distributed in such a way that the volume current density is inversely proportional to the distance from the axis, what is $J (s)$?

#solution[
  (a)
  A wire of radius $a$ has circumference $2 pi a$ so the current passing through each infitesimal part of the surface of the wire (circumference) is simply
  $
    K = I/(2 pi a)
  $

  (b) We want the volume current density to be
  $
    J = k/s
  $
  where $k$ is the proportionality constant.
  If we were to integrate $J(s)$ over a cross section of the wire, we should recover $I$
  $
    I = integral J(s) = integral_0^a integral_0^(2pi) k/s s dd(s, phi) = integral_0^a integral_0^(2pi) k dd(s, phi) arrow I = k a 2 pi\
    arrow.b\
    k = I/(2 pi a)
  $
  so
  $
    J(s) = I/(2 pi a s)
  $

  #align(center)[
    #canvas(length: 2cm, {
      import draw: *

  
      ortho(x: 0deg, y: 70deg, z: 0deg, {
        
        circle((0, 0))
        circle((12, 0))
        line((0, 1), (12, 1))
        line((0, -1), (12, -1))
      })

    })
    
    



  ]
]
