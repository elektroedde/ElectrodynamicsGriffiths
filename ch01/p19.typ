#import "../template.typ": *
#show: problem

=
Draw a circle in the $x"-"y$ plane. At a few representative points draw the unit vector $bh(v)$ tangent to the circle, pointing in the clockwise direction. By comparing adjacent vectors, determine the signs of $pdv(v_x,y)$ and $pdv(v_y, x)$. According to The definition of the curl, what is the direction of $curl bh(v)$?
#solution[
// Create a new canvas to draw on
#set align(center)
#canvas(length: 3cm, {
  import draw: *

  // Change the design for all elements after it
  set-style(
    // Design of arrow tips at the end of lines
    mark: (fill: black, scale: 2),
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

  // Draw the unit circle
  circle((0,0), radius: 1)

  // Draw the axis lines and axis labels
  line((-2, 0), (2, 0), mark: (end: "stealth"))
  content((), $ x $, anchor: "west")
  line((0, -2), (0, 2), mark: (end: "stealth"))
  content((), $ y $, anchor: "south")


  set-style(
    mark: (fill: black, scale: 2, end: "stealth"),
    stroke: (thickness: 2pt, cap: "round"),
  )

  for x in range(0,8){


    let angle = 45deg
    let xpos = calc.cos(x*angle)
    let ypos = calc.sin(x*angle)
    let xdir = calc.sin(x*angle)
    let ydir = -calc.cos(x*angle)
    let length = 1/2

    line((xpos,ypos),(xpos+length*xdir,ypos+length*ydir))

  }

})
#set align(left)

Going from one arrow to the next, it is seen that 
$
  &pdv(v_x, y) = "positive"\
  &pdv(v_y, x) = "negative"
$ 
For example, consider the arrow at  12 o'clock with $x=0, y=1, v_x = 1, v_y = 0$, and the arrow after it at around 2 o'clock with $x=0.7, y=0.7, v_x = 0.7, v_y = -0.7$. This confirms the values of $pdv(v_x, y) "and" pdv(v_y, x)$ above.
]