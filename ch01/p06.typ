#import "../template.typ": *

=
Prove that
$
  [bold(A) times (bold(B) times bold(C))] + [bold(B) times (bold(C) times bold(A))] + [bold(C) times (bold(A) times bold(B))] = 0
$
Under what conditions does $bold(A) times (bold(B) times bold(C)) = (bold(A) times bold(B)) times bold(C)$?

#solution[
  Using the BAC-CAB rule, rewrite the triple cross product as 
  $
    "(1)" bold(A) times (bold(B) times bold(C)) = bold(B)(bold(A) dot bold(C)) - bold(C)(bold(A) dot bold(B)) \
    "(2)" bold(B) times (bold(C) times bold(A)) = bold(C)(bold(B) dot bold(A)) - bold(A)(bold(B) dot bold(C)) \
   "(3)" bold(C) times (bold(A) times bold(B)) = bold(A)(bold(C) dot bold(B)) - bold(B)(bold(C) dot bold(A))
  $
  Using the commutative property of the dot product, $bold(v)_1 dot bold(v)_2 = bold(v)_2 dot bold(v)_1$, it is seen that:
  
   - The $bold(B)$-part in (1) cancels out the $bold(B)$-part in (3)
   
   - The $bold(C)$-part in (1) cancels out the $bold(C)$-part in (2)
    
   - The $bold(A)$-part in (2) cancels out the $bold(A)$-part in (3)
  
  The conditions when $bold(A) times (bold(B) times bold(C)) = (bold(A) times bold(B)) times bold(C) $ is translated with the BAC-CAB rule into $bold(B)(bold(A) dot bold(C)) - bold(C)(bold(A) dot bold(B)) = -bold(A)(bold(C) dot bold(B))+bold(B)(bold(C) dot bold(A))$ which gives that either $bold(A) = bold(C)$ 
  or $bold(B) perp (bold(A) "and" bold(C))$
  ]