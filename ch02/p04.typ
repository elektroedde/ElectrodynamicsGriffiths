#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field a distance $z$ above the center of a square loop (side length $d$) carrying a uniform line charge $lambda$.
#solution[
  Due to the symmetry, it is enough to calculate the contribution from one of the sides, and multiplying this result by 4. Only the $z$-component will be calculated since the $x"- and" y$-components will cancel. 

  Starting with determining the separation vector for one of the sides ($x: -a/2 arrow a/2, y=a/2$)
  $
    bscrr = x vu(x) + a/2 vu(y) + z vu(z) = z vu(z)
  $
  and the magnitude
  $
    scrr = sqrt(x^2 + (a/2)^2 + z^2)
  $
  gives
  $
    hscrr = (z vu(z))/sqrt(x^2 + (a/2)^2 + z^2)
  $

  Using these, the electric field is given by
  $
    vb(E) = 1/(4 pi epsilon_0) integral_(-a/2)^(a/2) (lambda z vu(z))/sqrt(x^2 + (a/2)^2 + z^2)^3 dd(x)\
    E_x = (lambda z)/(4 pi epsilon_0) integral_(-a/2)^(a/2) 1/sqrt(x^2 + sqrt((a/2)^2 + z^2)^2)^3 dd(x) = (lambda z)/(4 pi epsilon_0) [x/(((a/2)^2 + z^2)sqrt(x^2 + (a/2)^2 + z^2))]_(-a/2)^(a/2) =\
    = (lambda z)/(4 pi epsilon_0) a/(([a^2/4 + z^2]sqrt(a^2/2 + z^2))) 
  $

  Multiplying this by four gives the final result
  $
    ans(vb(E) = (lambda z a) /(pi epsilon_0 (a^2/4 + z^2)sqrt(a^2/2 + z^2)) vu(z))
  $
]