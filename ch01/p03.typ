#import "@local/elektroedde:0.1.0": *
#show: problem
=
Find the angle between the body diagonals of a cube.

#solution[
  $
    pdv(x,y,z,p,[2,k,2])\
    curl B\
    curldef(B)
  $
  The body diagonals $bold(A) = [1, 1, 1] "and " bold(B) = [1, 1, -1]$

  #figure(image("p03.png"))

  $|bold(A)| = |bold(B)| = sqrt(3)$

  $bold(A) dot bold(B) = 1 + 1 - 1 = 1$


  $bold(A) dot bold(B) = |bold(A)| |bold(B)| cos theta = 3 cos theta = 1 arrow theta = arccos(1/3) approx 70.53 degree$
]
