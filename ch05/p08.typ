#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Find the magnetic field at the center of a square loop, which carries a steady
current $I$ . Let $R$ be the distance from center to side.

(b) Find the field at the center of a regular $n$-sided polygon, carrying a steady current $I$. Again, let $R$ be the distance from the center to any side.

(c) Check that your formula reduces to the field at the center of a circular loop, in
the limit $n arrow infinity$.

#solution[
  (a) We can find the field produced by one of the sides, and due to symmetry the result is four times of that. Calculating the right wire gives
  $
    x = R cm y: -R arrow R cm dd(vb(l)')=vu(y)dd(y)\
    bscrr = -R vu(x) - y vu(y)cm scrr = sqrt(R^2 + y^2)\
    hscrr = bscrr/scrr cm dd(vb(l)') times hscrr = R/sqrt(R^2+y^2)^3 dd(y) vu(z)
  $
  Using these expressions, Biot-Savart law becomes
  $
    vb(B) = (mu_0 I)/(4 pi) vu(z) integral_(-R)^R R/sqrt(R^2 + y^2)^3 dd(y) = (mu_0 I)/(4 pi) vu(z) [(R y)/(R^2sqrt(R^2+y^2))]_(-R)^R =\
    = (2 mu_0 I)/(4 pi R sqrt(2))vu(z) = (sqrt(2)mu_0 I)/(4 pi R)vu(z)
  $
  Multiplying this result with 4 (since there are 4 straight wire segments) gives
  $
    vb(B)(vb(0)) = (sqrt(2)mu_0 I)/(pi R) vu(z)
  $

  (b) For a $n$-sided polygon, the same principle holds, where if we can find the field from one of the straight segments, the total field is given by multiplying this result with $n$.

  #align(center)[
    #canvas(length: 2cm, {
      import draw: *

      let pols = (3, 4, 5, 6, 7, 8)
      let pos = ((-2.5, 0), (0, 0), (2.5, 0), (-2.5, -2.5), (0, -2.5), (2.5, -2.5))
      
      set-style(polygon: (radius: 1))
      for (i, n) in pols.enumerate() {
        let R = calc.cos(180deg / n)
        let p = pos.at(i)
        polygon(p, n, angle: 180deg / n)
        content((rel: (0, 0.015)), $bullet$)
        line(p, (p.at(0) + R, p.at(1)), stroke: (dash: "dashed"), name: "a")
        content((rel: (-R/2,-0)),[#math.underbrace(box(width: R * 1.8cm))], name: "R-label")
        content((rel: (0,-0.2), to: "R-label"), $R$, name: "q0-label")
        line(p, (p.at(0) + R, p.at(1)+calc.sin(180deg/n)), stroke: (dash: "dashed"), name: "b")
        angle.angle("a.start", "a.end", "b.end",
    label: (text(red, [#sym.theta])))
      }
    })
  ]

  The total length of the straight right edges for all polygons is
  $
    L = 2 R tan(theta)cm theta = pi/n
  $
  so Biot-Savart becomes
  $
    (R mu_0 I)/(4 pi) vu(z) integral_(-R tan(pi/n))^(R tan(pi/n)) 1/sqrt(R^2+y^2)^3 dd(y) = (R mu_0 I)/(4 pi) [y/(R^2 sqrt(R^2 + y^2))]_(-R tan(pi/n))^(R tan(pi/n)) =\
    = (mu_0 I tan(pi/n))/(2 pi R sqrt(1+tan^2(pi/n))) vu(z)
  $
  Now, $tan(theta) = sin(theta)\/cos(theta) "and" sqrt(1 + tan^2(theta)) = sec(theta) = 1\/cos(theta)$, so the field from the right line segment is 
  $
    vb(B) = (mu_0 I sin(pi/n))/(2 pi R) vu(z)
  $
  Multiplying by the amount of sides for the polygon, $n$, gives the total magnetic field
  $
    vb(B) = (mu_0 I)/(2 R) (sin(pi/n)n)/pi vu(z) = (mu_0 I)/(2 R) (sin(pi/n))/(pi/n) vu(z)
  $

  (c) As $n arrow infinity$, the term $sin(pi/n)/(pi/n) arrow 1$ (since $pi/n arrow 0 "as" n arrow infinity$, and we have the standard limit $sin(x)/x arrow 1 "as" x arrow 0$). This gives the magnetic field
  $
    vb(B) = (mu_0 I)/(2 R) vu(z)
  $
  which is exactly the field given by a circular loop of radius $R$.

]
