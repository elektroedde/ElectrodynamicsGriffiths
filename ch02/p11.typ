#import "@local/elektroedde:0.1.0": *
#show: problem

=
Draw a field-line diagram for a uniformly charged solid sphere.

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

  let length = 1.5
  let radius = 0.5
  let field_line_start = 0.6
  let angle = 22.5deg
  let num = int(360deg/angle)
  fill(yellow)
  circle((0,0), radius: radius)
  let atom(pos, color, element, radius: 0.3, name: none) = {
  // Base circle with main color
  circle(
    pos,
    radius: radius,
    stroke: none,
    fill: color,
    name: name,
  )

  // Gradient overlay for 3D effect
  circle(pos, radius: radius, stroke: none, fill: gradient.radial(
    color.lighten(85%),
    color,
    color.darken(25%),
    focal-center: (25%, 20%),
    focal-radius: 10%,
    center: (30%, 25%),
  ))

  // Add element label
  let text-color = if color == rgb("#333333") { white } else { black }

  // Calculate text size based on radius
  let text-size = if radius < 0.4 { 10pt } else { 14pt }

  content(
    pos,
    text(fill: text-color, weight: "bold", size: text-size)[#element],
    anchor: "center",
  )
}

  atom((0,0), gray, $Q$, radius: 0.5)
  for value in range(num) {
    line((field_line_start*calc.cos(value*angle),field_line_start*calc.sin(value*angle)), (length*calc.cos(value*angle), length*calc.sin(value*angle)), mark: (end: ">"))
    line((1.6*calc.cos(value*angle),1.6*calc.sin(value*angle)), (2*calc.cos(value*angle), 2*calc.sin(value*angle)), mark: (end: ">"))
  }





  }
  )]
]