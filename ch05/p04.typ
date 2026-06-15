#import "@local/elektroedde:0.1.0": *
#show: problem

=
Suppose that the magnetic field in some region has the form 
$
B= k z vu(x)
$ 
(where $k$ is a constant). Find the force on a square loop (side $a$), lying in the $y z$ plane and centered at the origin, if it carries a current $I$ , flowing counterclockwise,
when you look down the $x$ axis.

#solution[
  #align(center)[
    #canvas(length:2cm, {
      import draw: *
      let w = 1

      line((-1.5,-1.4),(-1.5,-1), mark: (end: "stealth"))
      content((rel: (0,0.1)), $vu(z)$)
      line((-1.5,-1.4),(-1.1,-1.4), mark: (end: "stealth"))
      content((rel: (0.1,0)), $vu(y)$)
      line((-1.5,-1.4),(-1.7,-1.7), mark: (end: "stealth"))
      content((rel: (-0.05,-0.1)), $vu(x)$)


      line((-w,-w),(w,-w),(w,w),(-w,w),(-w,-w))


      for i in range(-2,3){
        content((-i/2.5,0.8), $dot.o.big$)
        content((-i/2.5,0.4), $dot.o$)
        content((-i/2.5,0.2), $dot$)
        content((-i/2.5,-0.8), $times.o.big$)
        content((-i/2.5,-0.4), $times.o$)
        content((-i/2.5,-0.1), $times$)



      }

    })
  ]
  The force on a wire carrying a current $vb(I)$ is
  $
    vb(F) = integral I(dd(vb(l)) times vb(B))
  $
  With current $I$, the forces on each of the four lines are, starting with the top line:
  $
    z=a/2cm y: a/2 arrow -a/2\
    B = k a/2 vu(x)cm dd(vb(l)) = vu(y)dd(y)\
    vb(F) = I k a/2 integral_(a/2)^(-a/2) (vu(y) times vu(x)) dd(y) = -I k a/2 vu(z) integral_(a/2)^(-a/2) dd(y) = I k a/2 vu(z) integral_(-a/2)^(a/2) dd(y) \
    arrow.b\
    vb(F) = (I k a^2)/2 vu(z)
  $

  Bottom line:
  $
    B = -k a/2 vu(x)cm dd(vb(l)) = vu(y)dd(y), y: -a/2 arrow a/2\
    vb(F) = -I k a/2 integral_(-a/2)^(a/2) (vu(y) times vu(x)) dd(y) = I k a/2 vu(z) integral_(-a/2)^(a/2) dd(y)\
    arrow.b\
    vb(F) = (I k a^2)/2 vu(z)
  $
  The forces on the left and right wires are zero due to symmetry (there is equal parts of these wires in a $+vu(x)$ magnetic field as $-vu(x)$ magnetic field).

  Total is top + Bottom
  $
    vb(F)_("tot") = vb(F)_("top") + vb(F)_("bot") = (I k a^2)/2 vu(z) + (I k a^2)/2 vu(z) = ans(I k a^2 vu(z))
  $
]