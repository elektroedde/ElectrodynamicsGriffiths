#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Check that the results of Exs. 2.5 and 2.6, and Prob. 2.12, are consistent with 
#neq[$
  vb(E)_("above") - vb(E)_("below") = sigma/epsilon_0 vu(n)
$]<eq2.33>

(b) Use Gauss' law to find the field inside and outside a long hollow cylindrical tube, which carries a uniform surface charge $sigma$. Check that your result is consistent with @eq2.33.

(c) Check that the result of Ex. 2.8 is consistent with boundary conditions
$
  V_("above") = V_("below")\
  pdv(V_("above"), n) - pdv(V_("below"), n) = - 1/epsilon_0 sigma
$


  Ex. 2.5 result
  $
    vb(E) = sigma/(2 epsilon_0) vu(n)
  $
  and dividing it up between field above and field below
  $
    &vb(E)_("above") = &&sigma/epsilon_0 vu(n)\
    &vb(E)_("below") = -&&sigma/epsilon_0 vu(n)
  $
  gives
  $
    vb(E) = sigma/(2 epsilon_0) vu(n)
  $
