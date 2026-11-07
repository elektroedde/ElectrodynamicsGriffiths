#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Consider an equilateral triangle, inscribed in a circle of radius $a$, with a point charge $q$ at each vertex. The electric field is zero (obviously) at the center, but (surprisingly) there are three _other_ points inside the triangle where the field is zero. Where are they? [Answer: $r = 0.285 a$ -- you'll probably need a computer to get it.]

(b) For a regular $n$-sided polygon there are $n$ points (in addition to the center) where the field is zero. Find their distance from the center for $n = 4$ and $n = 5$. What do you suppose happens as $n arrow infinity$?

#solution[
The white parts of the plots are where the field is at its minimum, i.e. almost $0$. For $n$ charges, $n$ additional points with $vb(E)=0$.
#figure(image("plots/p59_n=3.png", width: 75%))
#figure(image("plots/p59_n=4.png", width: 75%))
#figure(image("plots/p59_n=5.png", width: 75%))
#figure(image("plots/p59_ninf.png", width: 75%))

]
