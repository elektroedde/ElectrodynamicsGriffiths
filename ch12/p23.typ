#import "@local/elektroedde:0.1.0": *
#show: problem

=
Inertial system $ol(cal(S))$ moves in the $x$ direction at speed $3/5 c$ relative to system S. (The $ol(x)$ axis slides along the $x$ axis, and the origins coincide at $t = ol(t) = 0$, as usual.)

(a) On graph paper set up a Cartesian coordinate system with axes $c t$ and $x$. Carefully draw in lines representing $ol(x) = -3,-2,-1, 0, 1, 2, "and" 3$. Also draw in the lines corresponding to $c ol(t) = -3,-2,-1, 0, 1, 2, "and" 3$. Label your lines clearly.

(b) In $ol(cal(S))$, a free particle is observed to travel from the point $ol(x) = -2$ at time $c ol(t) = -2$
to the point $ol(x) = 2$ at $c ol(t) = 3$. Indicate this displacement on your graph. From
the slope of this line, determine the particle's speed in $cal(S)$.

(c) Use the velocity addition rule to determine the velocity in $cal(S)$ algebraically.

#solution[
  The graph will look like the following
  #align(center)[
    #canvas(length: 1cm, {
      import draw: *

      line((-5,0),(5,0), mark: (end: "stealth"))
      content((), $x$, anchor:"west")

      line((0,-5),(0,5), mark: (end: "stealth"))
      content((), $c t$, anchor:"south")

      let slopex = 5/3
      let vals = (-3, -2, -1, 0, 1, 2, 3)

      let xvals = (-4, -2.66, -1.33, 0,1.33,2.66,4)
      let yvals = (-2.4, -1.6, -0.8, 0,0.8,1.6,2.4)

      let i = 0
      for xval in vals {
        let epl = -6
        let epr = 6

        let p1 = (epl*3/5 + xval*4/5, epl)
        let p2 = (epr*3/5 + xval*4/5, epr)
        line(p1, p2, stroke: (paint:blue))
        if(xval >= 0) {
          content((rel: (0.4,0.6)), $ol(x) = space xval$, anchor: "south", angle: calc.atan(5/3) )
        }
        else {
        content((rel: (0.4,0.6)), $ol(x) = xval$, anchor: "south", angle: calc.atan(5/3) )
      }

      }
      let slopet = 3/5

      let i=0
      for tval in vals {
        let epl = -6
        let epr = 6

        let p1 = (epl,epl*slopet + tval*4/5)
        let p2 = (epr, epr*slopet + tval*4/5)
        line(p1, p2, stroke: (paint: red))
        content((rel: (0.15,0)), $c ol(t) = tval$, anchor: "west")

        i += 1
      }

      line((-4,-4),(4.75,-4),(4.75,5.25), stroke: (paint: olive))
      fill(olive)
      circle((-4,-4), radius: 0.1)

      circle((4.75,5.25), radius: 0.1)

      fill(none)
       content((0.375, -4), [#math.underbrace(box(width: 23em))], name: "dx-brace", angle: 0deg, )
      content((rel: (0.8, -0.5), to: "dx-brace"), $Delta x = 8.75$, name: "q0-label")
      
      content((5.1, 0.625), [#math.underbrace(box(width: 24em))], name: "dx-brace", angle: 90deg, )
      content((rel: (1.2, 0), to: "dx-brace"), $Delta t = 9.25$, name: "q0-label")


    })
  ]

  (b) The displacement in $cal(S)$ due to the particles movement in $ol(cal(S))$, $ol(x): -2 arrow 2, c ol(t): -2 arrow 3$ is marked by the left ($(ol(x), c ol(t)) = (-2, -2)$) and right ($(ol(x), c ol(t)) = (2, 3)$) green dots. The slope of this line is $(Delta c t) / (Delta x) = 9.25/8.75 = 37/35$, and the speed is given by the inverse of this slope, which is $35/37c$. Looking at the graph this makes immediate sense since the usual notion of speed is $(Delta x)/(Delta t)$ which in our case gives 
  $
  8.75/9.25c = ans(35/37c)
  $

  (c) The speed of $ol(cal(S))$ is $3/5 c$, and from (b) we are given $Delta c ol(t) = 5, Delta ol(x) = 4 arrow v_p = 4/5 c$
  where $v_p$ denotes the particles speed in the frame $ol(cal(S))$.
  Einsteins velocity addition rule then gives
  $
    v = (3/5 c + 4/5 c)/(1+3/5 c 4/5 c 1/c^2) = (7/5 c)/(25/25 + 12/25) = (25 times 7)/5/(25 + 12) c = ans(35/37 c)
  $
  which is exactly the result in (b).
]