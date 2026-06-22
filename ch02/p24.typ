#import "@local/elektroedde:0.1.0": *
#show: problem

=
For the charge configuration of Prob. 2.15, find the potential at the center, using infinity as your reference point.

#solution[
  The electric field outside is
  $
    vb(E) = k(b - a)/(r^2 epsilon_0)cm r > b\
$
and in the shell
$
    vb(E) = (k(r-a))/(r^2 epsilon_0) vu(r)
  $
  and zero inside.

  The potential from $infinity$ to $b$ is
  $
    V_(infinity arrow b) = - integral_infinity^b (k(b-a))/(r^2 epsilon_0) dd(r) = [(k(b-a))/(r epsilon_0)]_infinity^b = (k(b-a))/(b epsilon_0) = k/epsilon_0 - (k a)/(b epsilon_0)
  $

  The potential from $b$ to $a$ is
  $
    V_(b arrow a) = - integral_b^a (k(r-a))/(r^2 epsilon_0) dd(r) = integral_b^a (k a)/(r^2 epsilon_0) - k/(r epsilon_0) dd(r) =\
    = [-(k a)/(r epsilon_0)]_b^a - [k/epsilon_0 ln(r)]_b^a = -k/epsilon_0 + (k a)/(b epsilon_0) + k/epsilon_0 ln(b / a)
  $
  and the potential difference from $a$ to $0$ is zero. Adding up the potential difference from $infinity arrow b, b arrow a$ gives

  $
    k/epsilon_0 - (k a)/(b epsilon_0) - k/epsilon_0 + (k a)/(b epsilon_0) + k/epsilon_0 ln(b/a)\
    
    arrow.b\
    ans(V(0) = k/epsilon_0 ln(b/a))
  $

]