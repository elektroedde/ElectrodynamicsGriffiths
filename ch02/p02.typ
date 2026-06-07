#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the electric field (magnitude and direction) a distance $z$ above the mid-point between equal and opposite charges ($plus.minus q$), a distance $d$ apart.

#solution[
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
    content: (padding: 1pt)
  )
  line((-1.3, 0), (1.5, 0), mark: (end: ">"))
  content((), $ x $, anchor: "west")
  line((0, -0.3), (0, 1.8), mark: (end: ">"))
  content((), $ z $, anchor: "south")

  fill(red)
  circle((-0.8,0), radius: 0.07)
  content((), $ + $, anchor: "center")

  fill(blue)
  circle((0.8,0), radius: 0.07)
  content((), $ - $, anchor: "center", width: 50%)


  fill(black)
  circle((0,1.3), radius: 0.05)

  }
  )]

  The electric field from a point charge is given by
  $
    vb(E) = 1/(4 pi epsilon_0) q / scrr^2 hscrr
  $
  where $scrr$ is the distance between the charge and the field point and $hscrr$ is the unit separation vector from the charge to the field point. The field at our measurement point will have no vertical ($z$-directed) component since the positive charge will create a field in the positive $z$-direction with the same magnitude that the negative charge will create a field in the negative $z$-direction. Therefore the total field will be directed towards $+x$ with a magnitude twice that of what the positive charge creates. The separation vector magnitude becomes 
  $
    scrr = sqrt(z^2 + (d/2)^2)
  $
  and 
  $
    bscrr = d/2 vu(x) \
    arrow.b\
    hscrr = bscrr/scrr = d/(2 scrr) vu(x)
  $
  resulting in the total electric field from both charges
  $
    ans(vb(E) = 1/(4 pi epsilon_0) (q d)/sqrt(z^2 + (d/2)^2)^3  vu(x))
  $
]