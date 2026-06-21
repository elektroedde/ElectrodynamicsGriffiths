#import "@local/elektroedde:0.1.0": *
#show: problem

=
In classical mechanics, Newton's law can be written in the more familiar form $vb(F) = m vb(a)$. The relativistic equation, $vb(F) = dv(vb(p),t)$, cannot be so simply
expressed. Show, rather, that
$
  vb(F) = m/sqrt(1-u^2/c^2)[vb(a) + (vb(u)(vb(u) dot vb(a)))/(c^2-u^2)]
$
where $vb(a) eq.triple dv(vb(u),t)$ is the ordinary acceleration.

#solution[
  Newton's first law, which holds for relativistic speeds, is

  $
    vb(F) = dv(vb(p),t)
  $
  Rewriting the momuentum $vb(p)$ in terms of the relativistic speed gives
  $
    vb(p) = m gamma vb(u) arrow  dv(vb(p),t) =  dv(,t)(m gamma vb(u)) = m (gamma' vb(u) + gamma vb(u)')
  $
  where, as usual, 
  $
    gamma = 1/sqrt(1 - (vb(u)dot vb(u))/c^2)
  $
  The derivative of $gamma$ is
  $
    gamma' = -1/2 1/sqrt(1- (vb(u)dot vb(u))/c^2)^3 times  (-(vb(u)dot vb(u))/c^2)' = 1/(2 c^2) 1/sqrt(1-(vb(u)dot vb(u))/c^2) (vb(u) dot vb(u))'
  $
  with
  $
    (vb(u) dot vb(u)) ' = vb(u)' dot vb(u) + vb(u) dot vb(u)' = 2 vb(u) dot vb(u)'
  $
  so the derivative is simplified as 
  $
    gamma' = (vb(u) dot vb(u)')/(c^2 sqrt(1 - u^2/c^2)^3)
  $

  Putting this into Newton's first law gives
  $
    vb(F) = dv(vb(p),t) = m(gamma' vb(u) + gamma vb(u)') = m ((vb(u) dot vb(u)')/(c^2 sqrt(1 - u^2/c^2)^3) vb(u) + 1/sqrt(1-u^2/c^2)vb(u)') = \
    = m/sqrt(1-u^2/c^2) ((vb(u) dot vb(u)')/(c^2  - u^2) vb(u) + vb(u)') 
    $
    Finally, replacing $vb(u)' "with" vb(a)$ we get
    $
    ans(vb(F) = m/sqrt(1-u^2/c^2)[vb(a) + (vb(u)(vb(u)dot vb(a)))/(c^2-u^2)])
  $

]