#import "@local/elektroedde:0.1.0": *
#show: problem

=
Is the cross product associative?
$
  (bold(A) times bold(B)) times bold(C) eq.quest bold(A) times (bold(B) times bold(C))
$

#solution[
No, for example set
$
bold(A) = vu(x)\
bold(B) = vu(x)\
bold(C) = vu(z)
 $

 Then, the left hand side above becomes
 $
   (bold(A) times bold(B)) times bold(C) = (vu(x) times vu(x)) times vu(z) = 0
 $
 while the right hand side is
 $
   bold(A) times (bold(B) times bold(C)) = vu(x) times (vu(x) times vu(z)) = vu(x) times -vu(y) = -vu(z)
 $
]
