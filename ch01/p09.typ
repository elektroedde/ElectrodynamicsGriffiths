#import "@local/elektroedde:0.1.0": *

#show: problem

=
 Find the transformation matrix $R$ that describes a rotation by $120 degree$ about an axis from the origin through the point $(1, 1, 1)$. The rotation is clockwise
as you look down the axis toward the origin.

#solution[
  Looking down the axis from $(1,1,1)$ to the origin, the rotation (clockwise) takes the z-axis to the y-axis, y-axis to the x-axis, and the x-axis to the z-axis. The transformation matrix is then
  $
    R = mat(0,0,1;1,0,0;0,1,0;delim: "[")
  $
  #figure[
    #canvas(length: 2cm, {
      import draw: *

      let stuffs = ($z$, $x$, $y$)
      for i in range(3){
        let x = i*120deg + 90deg
      line((0,0),(calc.cos(x),calc.sin(x)), mark: (end: "stealth"))
      content((rel: (0.1*calc.cos(x),0.1*calc.sin(x))), stuffs.at(i))
      arc((calc.cos(x - 10deg),calc.sin(x - 10deg)), start: x - 10deg, stop: x -100deg, mark: (end: "stealth"))
      

      }



    })
  ]
]