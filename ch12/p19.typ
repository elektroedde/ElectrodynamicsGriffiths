#import "@local/elektroedde:0.1.0": *
#show: problem

=
The parallel between rotations and Lorentz transformations is even
more striking if we introduce the *rapidity*:
$
θ ≡ tanh^(-1)(v/c)
$

(a) Express the Lorentz transformation matrix $Lambda$ (Eq. 12.24) in terms of $theta$, and compare it to the rotation matrix (Eq. 1.29).

 In some respects, rapidity is a more natural way to describe motion than velocity. For one thing, it ranges from $-infinity "to" infinity$, instead of $−c "to" c$. More significantly, rapidities add, whereas velocities do not.

(b) Express the Einstein velocity addition law in terms of rapidity.

#solution[
  (a) Rewriting $gamma "and" beta$ in terms of the rapidity gives
  $
    tanh^(-1) beta = theta arrow beta = tanh(theta)\
    gamma = 1/sqrt(1-beta^2) arrow gamma = 1/sqrt(1-tanh^2(theta)) = 1/(sech(theta)) arrow gamma = cosh(theta)
  $
  This makes the transformation matrix
  $
    Lambda = mat(
      gamma,-gamma beta,0,0;
      -gamma beta,gamma,0,0;
      0,0,1,0;
      0,0,0,1) arrow mat(
      cosh(theta),-cosh(theta) tanh(theta),0,0;
      -cosh(theta)tanh(theta),cosh(theta),0,0;
      0,0,1,0;
      0,0,0,1; column-gap: #1.5em)
  $
  Since $tanh(theta) = sinh(theta)/cosh(theta)$, the matrix can be further simplified to
  $
    Lambda = mat(
      cosh(theta),-sinh(theta),0,0;
      -sinh(theta),cosh(theta),0,0;
      0,0,1, 0;
      0,0,0,1; column-gap: #1.5em)
  $

  Comparing it to the rotation matrix (Eq. 1.29) which is
  $
    mat(cos(theta),sin(theta),0;-sin(theta),cos(theta),0;0,0,1)
  $

  (b) The Einstein velocity addition law is
  $
    v_(A C) = (v_(A B) + v_(B C))/(1 + (v_(A B)v_(B C))/c^2)
  $
  $
    theta_(A B) = tanh^(-1)(v_(A B)/c) arrow tanh(theta_(A B)) = v_(A B)/c\
    theta_(B C) = tanh^(-1)(v_(B C)/c) arrow tanh(theta_(B C)) = v_(B C)/c\
    theta_(A C) = tanh^(-1)(v_(A C)/c) arrow tanh(theta_(A C)) = v_(A C)/c\
  $
  This gives the Einstein velocity addition law in terms of the rapidity
  $
    c tanh(theta_(A C)) = (c (tanh(theta_(A B)) + tanh(theta_(B C)))) /(1 + tanh(theta_(A B)) tanh(theta_(B C))) \
    arrow.b\
    tanh(theta_(A C)) = (tanh(theta_(A B)) + tanh(theta_(B C))) /(1 + tanh(theta_(A B)) tanh(theta_(B C))) 
  $
  Using the identity
  $
    tanh(x+y) = (tanh(x)+tanh(y))/(1+tanh(x)tanh(y))
  $
  gives
  $
    tanh(theta_(A C)) = tanh(theta_(A B) + theta_(B C)) arrow ans(theta_(A C) = theta_(A B) + theta_(B C))
  $

]