#import "@local/elektroedde:0.1.0": *
#show: problem

=
Consider an infinite chain of point charges, $plus.minus q$ (with alternating signs), strung out along the $x$ axis, each a distance $a$ from its nearest neighbors.
Find the work per particle required to assemble this system.

#solution[
  #figure(
    canvas(length: 2cm, {
      import draw: *

      for i in range(1,8) {
            fill(none)
            content((-0.8, -i/2), $"Charge "#i":"$)
            line((6,-i/2),(i/1.3-1/1.6,-i/2), mark: (end: "stealth"))

        for j in range(0,i) {


            fill(blue)
            if (calc.even(j)) {
              fill(red)
            }

            circle((j/1.3,-i / 2), radius: 0.1)
            if (calc.even(j)) {
              content((rel: (0, -0.1)), $+q$, anchor: "north")
            } else {
              content((rel: (0, -0.1)), $-q$, anchor: "north")
            }
          
        }
      }
    }),
  )

  Adding charges $1"-"7$ requires the work $W_1"-"W_7$:
  $
    &W_1 = 0\
    &W_2 = ec q^2/a (-1)\
    &W_3 = ec q^2/a (-1+1/2)\
    &W_4 = ec q^2/a (-1+1/2-1/3)\
    &W_5 = ec q^2/a (-1+1/2-1/3+1/4)\
    &W_6 = ec q^2/a (-1+1/2-1/3+1/4-1/5)\
    &W_6 = ec q^2/a (-1+1/2-1/3+1/4-1/5+1/6)\
    &W_7 = ec q^2/a (-1+1/2-1/3+1/4-1/5+1/6-1/7)\
  $

  As we keep adding charges, we add the constant $(-1)^n 1/n$ which means the Madelung constant is
  $
    alpha = sum_1^infinity (-1)^n/n
  $
  which is similar to the known Maclaurin series for $ln(x+1)$:
  $
    ln(x+1) = sum_1^infinity (-1)^(n+1)/n x^n = - sum_1^infinity (-1)^n/n x^n\
$

Setting $x=1$ and moving the negative sign to the LHS, we get
$
    -ln(2) = sum_1^infinity (-1)^n/n
  $
  which is identical to the Madelung constant, which gives
  $
   ans(alpha = -ln(2))
  $
]
