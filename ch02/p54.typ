#import "@local/elektroedde:0.1.0": *
#show: problem

=
In a vacuum diode, electrons "boil" off a hot *cathode*, at potential zero, and accelerate across a gap to the *anode*, which is held at positive potential $V_0$. The cloud of moving electrons within the gap (called *space charge*) quickly builds up to the point where it reduces the field at the surface of the cathode to zero. From then on, a steady current $I$ flows between the plates.

Suppose the plates are large relative to the separation ($A >> d^2$ in the figure), so that edge effects can be neglected. Then $V$, $rho$, and $v$ (the speed of the electrons) are all functions of $x$ alone.

#figure(
  canvas(length: 1.5cm, {
    import draw: *

    line((0,0),(0.6,0.5),(0.6,2.5),(0,2),close: true)
    line((2,0),(2.6,0.5),(2.6,2.5),(2,2),close: true, fill: gray.lighten(40%))
    line((0.3,0.25),(3.3,0.25), mark: (end: ">"))
    content((3.4,0.25), $x$, anchor: "west")
    content((2.3,1.6), $A$)

    circle((0.3,1.25), radius: 0.04, fill: black)
    line((0.3,1.25),(2,1.25), mark: (end: ">"))
    content((1.15,1.3), [Electron], anchor: "south")

    line((0.3,2.85),(2.3,2.85), mark: (start: ">", end: ">"))
    content((1.3,2.9), $d$, anchor: "south")

    content((0.3,-0.15), [Cathode \ $(V = 0)$], anchor: "north")
    content((2.3,-0.15), [Anode \ $(V_0)$], anchor: "north")
  }), caption: []
)

(a) Write Poisson's equation for the region between the plates.

(b) Assuming the electrons start from rest at the cathode, what is their speed at point $x$, where the potential is $V(x)$?

(c) In the steady state, $I$ is independent of $x$. What, then, is the relation between $rho$ and $v$?

(d) Use these three results to obtain a differential equation for $V$, by eliminating $rho$ and $v$.

(e) Solve this equation for $V$ as a function of $x$, $V_0$, and $d$. Plot $V(x)$, and compare it to the potential _without_ space charge. Also, find $rho$ and $v$ as functions of $x$.

(f) Show that
#neq(
$I = K V_0^(3\/2)$
)<eq2.56>
and find the constant $K$. (@eq2.56 is called the *Child--Langmuir law*. It holds for other geometries as well, whenever space charge limits the current. Notice that the space-charge-limited diode is _nonlinear_ -- it does not obey Ohm's law.)
