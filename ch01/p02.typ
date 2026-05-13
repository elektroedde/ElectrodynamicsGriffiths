#import "../template.typ": solution, bh

=
Is the cross product associative?
$
  (bold(A) times bold(B)) times bold(C) eq.quest bold(A) times (bold(B) times bold(C))
$

#solution[
No, for example set
$
bold(A) = bh(x)\
bold(B) = bh(x)\
bold(C) = bh(z)
 $

 Then, the left hand side above becomes
 $
   (bold(A) times bold(B)) times bold(C) = (bh(x) times bh(x)) times bh(z) = 0
 $
 while the right hand side is
 $
   bold(A) times (bold(B) times bold(C)) = bh(x) times (bh(x) times bh(z)) = bh(x) times -bh(y) = -bh(z)
 $
]
