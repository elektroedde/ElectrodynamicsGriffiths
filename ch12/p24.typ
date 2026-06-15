#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Equation 12.40 defines proper velocity in terms of ordinary velocity. Invert that
equation to get the formula for $u$ in terms of $eta$.

(b) What is the relation between proper velocity and rapidity (Eq. 12.34)? Assume
the velocity is along the $x$ direction, and find $eta$ as a function of $theta$.

#solution[
  (a) The proper velocity is 
  $
    vb(eta) = 1/sqrt(1-u^2/c^2)vb(u)
  $
  Squaring both sides gives
  $
    eta^2 = 1/(1 - u^2/c^2) u^2
  $
  Solving for $u$
  $
    eta^2 (1 - u^2/c^2) = u^2\
    eta^2 = u^2 + eta^2 u^2 / c^2\
    eta^2 = u^2 (1 + eta^2/c^2)\
    eta^2 /(1 + eta^2/c^2) = u^2
  $
  Now taking the square root on both sides gives the ordinary velocity $u$ in terms of the proper velocity $eta$
  $
    ans(vb(u) = 1/sqrt(1+eta^2\/c^2)vb(eta))
  $

  (b) The rapidity $theta$ is defined as 
  $
    theta = tanh^(-1)(u/c) arrow u/c = tanh(theta)cm u = c tanh(theta)
  $

  Rewriting the proper velocity in terms of rapidity then gives
  $
    vb(eta) = 1/sqrt(1-tanh^2(theta)) c tanh(theta)
  $
  Using the hyperbolic relations
  $
    &"(i)" 1-tanh^2(theta) = sech^2(theta) = 1/(cosh^2(theta))\
    &"(ii)" tanh(theta) = sinh(theta)/cosh(theta)
  $
  we can rewrite the proper velocity as 
  $
    vb(eta) = c sinh(theta)/(cosh(theta)1/cosh(theta)) = ans(c sinh(theta))
  $
  
]