#import "@local/elektroedde:0.1.0": *
#show: problem

=

#solution[
  We have
  $
    vb(E)(vb(r),t) = 1/(4 pi epsilon_0) integral [ rho(vb(r)',t_r)/scrr^2 hscrr + (dot(rho)(vb(r)', t_r))/(c scrr) hscrr - (dot(vb(J))(vb(r)', t_r))/(c^2 scrr)] dd(tau')
  $<p13-a>
  and
  $
    rho(vb(r),t) = rho(vb(r),0) + dot(rho)(vb(r),0)t\
    rho(vb(r),t_r) = rho(vb(r),0) + dot(rho)(vb(r),0)t_r = rho(vb(r),0) + dot(rho)(vb(r),0)(t - scrr/c)\
    arrow.b\
    rho(vb(r),t_r) =  rho(vb(r),t) - dot(rho)(vb(r),0)scrr/c\
    arrow.b\
    rho(vb(r),t_r)/scrr^2 =  rho(vb(r),t)/scrr^2 - (dot(rho)(vb(r),0))/(c scrr)\
  $
  Putting this into @p13-a, and noting that $dot(vb(J)) = 0$ since $vb(J)$ is constant in time, we get 
  $
    vb(E)(vb(r),t) = 1/(4 pi epsilon_0) integral [ rho(vb(r)',t)/scrr^2 hscrr - (dot(rho)(vb(r)', 0))/(c scrr) hscrr+ (dot(rho)(vb(r)', t_r))/(c scrr) hscrr] dd(tau')\
    arrow.b\
    vb(J) "constant in time" arrow.l.r dot(rho) "constant in time" [div vb(J) = - dot(rho)]arrow dot(rho)(vb(r),t) = dot(rho)(vb(r),0)\
    arrow.b\
    vb(E)(vb(r),t) = 1/(4 pi epsilon_0) integral [ rho(vb(r)',t)/scrr^2 hscrr - (dot(rho)(vb(r)', 0))/(c scrr) hscrr+ (dot(rho)(vb(r)', 0))/(c scrr) hscrr] dd(tau')\
    arrow.b\
    vb(E)(vb(r),t) = 1/(4 pi epsilon_0) integral  rho(vb(r)',t)/scrr^2 hscrr dd(tau')\

  $
]