#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Three charges are situated at the corners of a square (side $a$), as shown in the figure. How much work does it take to bring in another charge, $+q$, from
far away and place it in the fourth corner?

(b) How much work does it take to assemble the whole configuration of four charges?

#figure(
  canvas(length: 2cm, {
    import draw: *

    line((0,0),(0,1),(1,1),(1,0),(0,0))
    circle((0,0),radius:0.03, fill: black)
    circle((0,1),radius:0.03, fill: black)
    circle((1,1),radius:0.03, fill: black)
    circle((1,0),radius:0.03, fill: black)

    content((-0.1,0), $+q$, anchor:"east")
    content((-0.1,1), $-q$, anchor:"east")
    content((1.1,0), $-q$, anchor:"west")
    content((0.5,0.1), $a$, anchor:"south")
    content((0.1,0.5), $a$, anchor:"west")
  }), caption: []
)

#solution[
  (a) 
  The work required to bring in a charge $q_4$ is
  $
    W_4 = 1/(4 pi epsilon_0) q_4 (q_1/scrr_(1 4) + q_2/scrr_(2 4) + q_3 / scrr_(3 4))
  $
  where each part is due to the three charges, $q_1, q_2, q_3$, already in the configuration. The separation distances $scrr$ are $scrr_(1 4) = a, scrr_(2 4) = sqrt(2) a, scrr_(3 4) = a$

  This gives
  $
    W_4 = 1/(4 pi epsilon_0) q^2 (-1/a + 1/(sqrt(2)a)-1/a) = 1/(4 pi epsilon_0) q^2 / a (-2+1/sqrt(2)) 
  $

  (b) 
  $
    W_1 = 0
  $
  $
    W_2 = ec q_2 (q_1/scrr_(1 2)) = ec (q^2)/a (-1)
  $
  $
    W_3 = ec q_3 (q_1/scrr_(1 3) + q_2 / scrr_(2 3)) = ec q^2/a (-1 + 1/sqrt(2)) 
  $
  $
    W_4 =1/(4 pi epsilon_0) q^2 / a (-2+1/sqrt(2)) 
  $

  $
    W_1 + W_2 + W_3 + W_4 = ec q^2/a (-1-1+1/sqrt(2)-2+1/sqrt(2)) = ec q^2/a (-4 + sqrt(2))
  $
]