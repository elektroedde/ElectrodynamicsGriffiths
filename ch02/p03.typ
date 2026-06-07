#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field a distance $z$ above one end of a straight line segment of length $L$ that carries a uniform line charge $lambda$. Check that your formula in consistent with what you would expect for the case $z >> L$.

#solution[
  The electric field from a continuous line charge distribution is given by
  $
    vb(E) = 1/(4 pi epsilon_0) integral lambda(vb(r)')/scrr^2 dd(l')
  $
  The setup is shown in the figure below
    #align(center)[#canvas(length: 2.5cm, {
    import draw: *
      set-style(
    // Design of arrow tips at the end of lines
    mark: (fill: black, scale: 1),
    // Design of lines
    stroke: (thickness: 0.4pt, cap: "round"),
    // Design of angles
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    // Design of all text elements with an anchor
    content: (padding: 4pt)
  )
  line((0, 0), (0.75, 0))
  content((), $arrow.l L arrow$, anchor: "north")
  line((0.75,0), (1.5, 0))

  line((0,0),(0,1),stroke: (dash: "dashed"))

  fill(black)
  circle((0,1),radius:0.05)
  content((), $ z $, anchor: "west")
  }
  )]

  The separation vector $bscrr$ becomes 
  $
    -x vu(x) + z vu(z)\
  $
  which gives 
  $
    hscrr = (-x vu(x) + z vu(z))/sqrt(x^2+z^2)\
  $
  This means our integral becomes, since $lambda$ is constant,
  $
    vb(E) = lambda / (4 pi epsilon_0) integral_0^L (-x vu(x) + z vu(z))/sqrt(x^2 + z^2)^3 dd(x)
  $
  The following standard integrals will be used in the calculations:
  $
    integral 1/sqrt(x^2 + a^2)^3 dd(x) = 1/a^2 x/sqrt(x^2 + a^2)\
    integral x/sqrt(x^2 + a^2) dd(x) = -1/sqrt(x^2+a^2)
  $
  Starting with the $x$-component  gives
    $
    E_x = -lambda / (4 pi epsilon_0) integral_0^L x /sqrt(x^2 + z^2)^3 dd(x) = -lambda/(4 pi epsilon_0) [-1/sqrt(x^2 + z^2)]_0^L =\
    = lambda/(4 pi epsilon_0)(1/z - 1/sqrt(L^2 + z^2)) 
  $

  And the $z$-component
    $
    E_z = lambda / (4 pi epsilon_0) integral_0^L z /sqrt(x^2 + z^2)^3 dd(x) = (lambda z)/(4 pi epsilon_0) [1/z^2 x/sqrt(x^2 + z^2 )]_0^L =\
    = lambda/(4 pi epsilon_0 z)(L/sqrt(L^2 + z^2)) 
  $
  The electric field is then
  $
    vb(E) = lambda/(4 pi epsilon_0)(1/z - 1/sqrt(L^2 + z^2)) vu(x) + lambda/(4 pi epsilon_0 z)(L/sqrt(L^2 + z^2)) vu(z)
  $

  In the case that $z >> L$, we get
  $
    vb(E) = lambda/(4 pi epsilon_0)(1/z - 1/z) vu(x) + lambda/(4 pi epsilon_0 z)(L/z) vu(z) = (lambda L)/(4 pi epsilon_0 z^2) vu(z)
  $
  which is of the same form as the field at a point $z$ from a point charge of magnitude $lambda L$.
]