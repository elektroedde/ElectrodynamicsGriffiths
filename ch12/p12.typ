#import "@local/elektroedde:0.1.0": *
#show: problem

=
Solve
$
  &&"(i)" &ol(x) = gamma(x-v t)\
  &&"(ii)" &ol(y) = y\
  &&"(iii)" &ol(z) = z\
  &&"(iv)" &ol(t) = gamma(t - v/c^2 x)\
$
for $x,y,z,t$ in terms of $ol(x), ol(y), ol(z),ol(t)$, and check that you recover 
$
  
  &&"(i')" &x = gamma(ol(x)+v ol(t))\
  &&"(ii')" &y = ol(y)\
  &&"(iii')" &z = ol(z)\
  &&"(iv')" &t = gamma(ol(t) + v/c^2 ol(x))\
$
#solution[
  From (i) and (iv) we have
  $
    &"(i)" &&ol(x) = gamma(x-v t) arrow x =ol(x)/gamma + v t\
    &"(iv)" &&ol(t) = gamma(t - v/c^2 x) arrow t = ol(t)/gamma + v/c^2 x
  $
  Inserting $t$ from (iv) into the expression for $x$ in (i) gives
  $
    x = ol(x)/gamma + v(ol(t)/gamma + v/c^2 x) arrow x(1-v^2/c^2)=ol(x)/gamma + (v ol(t))/gamma\
    arrow.b\
    x 1/gamma^2 = 1/gamma (ol(x) + v ol(t)) arrow ans(x = gamma(ol(x)+ v ol(t)) = "(i')")
  $

  Putting this expression for $x$ into the expression for $t$ in (iv) gives
  $
    t = ol(t)/gamma + v/c^2 (gamma(ol(x)+v ol(t))) = gamma (ol(t)/gamma^2 + v/c^2 ol(x) + v^2/c^2 ol(t)) = gamma((1-v^2/c^2 + v^2/c^2)ol(t) + v/c^2 ol(x)) 
    \
    arrow.b\
    ans(t = gamma(ol(t) + v/c^2 ol(x)) = "(iv')")
  $

  (ii) $arrow.l.r.long$ (ii') and (iii) $arrow.l.r.long$ (iii') follow directly from the equations.
  
]