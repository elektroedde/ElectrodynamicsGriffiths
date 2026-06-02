#import "../template.typ": *
#show: problem

=
(a) Show that 
$
  surfint(f(nabla times bold(A))) = surfint([bold(A) times (nabla f)]) + lineintc(f bold(A))
$

(b) Show that
$
  integral_V bold(B) dot (nabla times bold(A)) dif tau = integral_V bold(A) dot (nabla times bold(B)) dif tau + integral.cont_S (bold(A) times bold(B)) dot dif bold(a)
$

#solution[
(a)
Using product rule (7) (from the cover of the book) 
$
  "(7)" nabla times (f bold(A)) = f(nabla times bold(A)) -bold(A) times (nabla f) \
  arrow.b \
  f(nabla times bold(A)) = bold(A) times(nabla f) + nabla times (f bold(A))
$
Integrating this expression over a surface gives 
$
surfint(f(nabla times bold(A)))  = surfint([bold(A) times(nabla f)])  + underbrace(surfint( nabla times (f bold(A))), "use Stokes' Theorem") \
arrow.b \
surfint(f(nabla times bold(A)))  = surfint([bold(A) times(nabla f)])  + lineintc(f bold(A))
$

(b) Using product rule (6)
$
  nabla dot (bold(A) times bold(B)) = bold(B) dot (nabla times bold(A)) - bold(A) dot (nabla times bold(B))\
  arrow.b \
  bold(B) dot (nabla times bold(A)) = bold(A) dot (nabla times bold(B)) + nabla dot (bold(A) times bold(B))
$

Integrating this expression over a volume gives
$
  &volint(bold(B) dot (nabla times bold(A))) &&= volint(bold(A) dot (nabla times bold(B))) + underbrace(volint(nabla dot (bold(A) times bold(B))), "use Gauss' Theorem") \
  &&arrow.b \
  &volint(bold(B) dot (nabla times bold(A))) &&= volint(bold(A) dot (nabla times bold(B))) + surfintc((bold(A) times bold(B))) \
$

]