#import "../template.typ": *

=
(a) Show that 
$
  x dv(,x) (delta(x)) = - delta(x)
$

(b) Let $theta(x)$ be the *step function*:
$
  theta(x) = cases(1",   "&"if" >0, 0","&"if" x<= 0)
$
Show that $dif theta \/ dif x = delta(x)$

#solution[
  (a)
  $
    infint x dv(,x)(delta(x)) dif x = underbrace([x delta(x)]_(-infinity)^infinity,=0) - infint delta(x) dif x \
    arrow.b\

    infint x dv(,x)(delta(x)) dif x = -infint delta(x) dif x arrow ans(x dv(,x)(delta(x)) = - delta(x))
  $

  (b) Using test function $f(x)$ and integrating:
  $
    f(x) dv(theta(x), x) arrow infint f(x) dv(theta(x), x) dif x = underbrace([f(x) theta(x)]_(-infinity)^infinity,=f(infinity)) - infint f'(x) theta(x) dif x = \
    = f(infinity) - integral_0^infinity f'(x) dif x = f(infinity) - f(infinity) + f(0) = f(0) = f(x) delta(x)\
    arrow.b\
    f(x) dv(theta(x), x) = f(x) delta(x) arrow ans(dv(theta(x), x) = delta(x))
  $
]