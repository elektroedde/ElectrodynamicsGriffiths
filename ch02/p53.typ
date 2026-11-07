#import "@local/elektroedde:0.1.0": *
#show: problem

=
Two infinitely long wires running parallel to the $x$-axis carry uniform charge densities $+lambda$ and $-lambda$ (see figure).

#figure(
  canvas(length: 1.5cm, {
    import draw: *

    line((0,-0.6),(0,1.6), mark: (end: ">"))
    line((-2.2,0),(2.4,0), mark: (end: ">"))
    line((0.8,0.8),(-1,-1), mark: (end: ">"))
    content((0,1.7), $z$, anchor: "south")
    content((2.5,0), $y$, anchor: "west")
    content((-1.05,-1.05), $x$, anchor: "north-east")

    line((-0.2,0.8),(-2,-1))
    line((1.8,0.8),(0,-1))
    content((-1.85,-0.7), $-lambda$, anchor: "east")
    content((0.3,-0.75), $+lambda$, anchor: "west")
    content((-0.5,0.05), $a$, anchor: "south")
    content((0.5,0.05), $a$, anchor: "south")
  }), caption: []
)

(a) Find the potential at any point $(x, y, z)$, using the origin as your reference.

(b) Show that the equipotential surfaces are circular cylinders, and locate the axis and radius of the cylinder corresponding to a given potential $V_0$.
