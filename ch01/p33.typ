#import "@local/elektroedde:0.1.0": *
#show: problem

=
Test the divergence theorem for the function $bold(v) = (x y) bh(x) + (2y z)bh(y)+ (3x z)bh(z)$. Take as your volume the cube with corners $(0,0,0)","(0,0,2)","(0,2,0)","(2,0,0)$

#figure(image("p33.png", width: 50%))

#solution[
  The divergence theorem says
  $
    integral_V (nabla dot bold(v)) dif tau = integral.cont_S bold(v) dot dif bold(a)
  $

  The divergence of $bold(v)$ is 
  $
    nabla dot bold(v) = y + 2z + 3x
  $
  and the resulting LHS is 

  $
    integral.triple_0^2 (y+2z+3x)dif x dif y dif z = integral.double_0^2 [y x + 2 z x + (3x^2)/2]_0^2 dif y dif z = \
    = integral.double_0^2 2y + 4z + 6 dif y dif z = integral_0^2 [y^2 + 4y z + 6y]_0^2 dif z = \
    = integral_0^2 16 + 8z dif z = [16z + 4z^2]_0^2 = ans(48) 
  $

  Top face:
  $
    x","y: 0 arrow 2 "," z = 2 "," dif bold(a) = dif x dif y bh(z) \
    integral_S 6x dif x dif y = 24
  $

  Bottom face: 
  $
     x","y: 0 arrow 2 "," z = 0 "," dif bold(a) = dif x dif y (-bh(z)) \
     integral_S 0 dif x dif y = 0
  $

  Left face:
  $
    x","z: 0 arrow 2 "," y = 0 "," dif bold(a) = dif x dif z (-bh(y)) \
     integral_S 0 dif x dif z = 0
  $

  Right face: 
  $
    
  x","z: 0 arrow 2 "," y = 2 "," dif bold(a) = dif x dif z bh(y) \
   integral_S 4z dif x dif z = 16
  $

  Front face:
  $
    y","z: 0 arrow 2 "," x = 2 "," dif bold(a) = dif y dif z bh(x) \
   integral_S 2y dif y dif z = 8
  $

  Back face:
  $
    y","z: 0 arrow 2 "," x = 0 "," dif bold(a) = dif y dif z (-bh(x)) \
   integral_S 0 dif y dif z = 0
  $

  Total is $ans(48)$
  
]