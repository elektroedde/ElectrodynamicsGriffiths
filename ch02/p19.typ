#import "@local/elektroedde:0.1.0": *
#show: problem

=
Two spheres, each of radius $R$ and carrying uniform volume
charge densities $+rho$ and $-rho$, respectively, are placed so that they partially overlap
(FIGURE). Call the vector from the positive center to the negative center $d$. Show
that the field in the region of overlap is constant, and find its value. [Hint: Use the
answer to Prob. 2.13.]

#solution[
  The result of Prob. 2.13 is
  $
    vb(E) = (rho a)/(3 epsilon_0) vu(r)
  $
  Aligning the spheres in the $vu(x)$-direction and using superposition on the red point below:
  #figure[
    #canvas(length: 2cm, {
      import draw: *

      circle((0,0), radius: 1)
      circle((1.5,0))

      fill(red)
      circle((0.5,0), radius: 0.1)

    })
  ]

  Here, the field due to the positive sphere is 
  $
    vb(E)_+ = (rho (d-R))/(3 epsilon_0) vu(x)
  $
  and the field due to the negative sphere is 
  $
    vb(E)_- = (rho R)/(3 epsilon_0) vu(x)
  $
  Since the field is constant in the overlapping region, it will be equal to the sum of these two contributions at all points in the overlap. 

  Adding them together gives
  $
    ans(vb(E) = (rho d)/(3 epsilon_0) vu(x))
  $

  Generalizing in any direction simply gives
  $
    ans(vb(E) = (rho d)/(3 epsilon_0) vu(d))
  $
  where $vu(d)$ is the vector pointing from the center of the positively charged sphere, towards the center of the negatively charged sphere. ! :)
]