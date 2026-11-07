#import "@local/elektroedde:0.1.0": *
#show: problem

=
Confirm that the retarded potentials satisfy the Lorenz gauge condition. [Hint: First show that

$
  div(vb(J)/scrr) = 1/scrr (div vb(J)) + 1/scrr (nabla' dot vb(J)) - nabla' dot (vb(J)/scrr)
$
where $nabla$ denotes derivatives with respect to $vb(r)$, and $nabla'$ denotes derivatives with respect to $vb(r)'$. Next, noting that $vb(J)(vb(r)', t - scrr\/c)$ depends on $vb(r)'$ both explicitly and through $scrr$, whereas it depends only on $vb(r)$ through $scrr$, confirm that
$
  div vb(J) = - 1/c dot(vb(J)) dot (grad scrr), nabla' dot vb(J) = - dot(rho) - 1/c dot(vb(J)) dot (grad' scrr)
$

Use this to calculate the divergence of $vb(A)$ (Eq. 10.26.)]

#solution[
  We want to show 
  $
    div vb(A) = - mu_0 epsilon_0 pdv(V,t)
  $
  where
  $
    vb(A) = mu_0/(4 pi) integral (vb(J)(vb(r)', t_r))/scrr dd(tau')
  $
  Now, taking the divergence of $vb(A)$ gives
  $
    div vb(A) = mu_0/(4 pi) integral div ((vb(J)(vb(r)', t_r))/scrr) dd(tau')
  $
  From now on, $vb(J)(vb(r)',t_r) = vb(J)$.
  Using a divergence identity gives
  $
    div (vb(J)/scrr) = 1/scrr (div vb(J)) + vb(J) dot (grad 1/scrr)
  $
  and
  $
    divprim (vb(J)/scrr) = 1/scrr (divprim vb(J)) + vb(J) dot (gradprim 1/scrr)
  $

  Since $1/scrr = 1/(|vb(r)-vb(r)'|)$, we have
  $
    gradprim 1/scrr = - grad 1/scrr
  $ 

  which means we can rewrite $divprim (vb(J)/scrr)$ as 
  $
    divprim (vb(J)/scrr) = 1/scrr (divprim vb(J)) - vb(J) dot (grad 1/scrr)\
    arrow.b\
    vb(J) dot (grad 1/scrr) = 1/scrr (divprim vb(J)) - divprim(vb(J)/scrr)
  $
  Putting this expression into $div (vb(J)/scrr)$ gives
  $
    div (vb(J)/scrr) = 1/scrr (div vb(J)) + 1/scrr (divprim vb(J)) - divprim(vb(J)/scrr)
  $
  which is what the hint wanted us to show. Putting this into the expression for $div vb(A)$ gives
  $
    div vb(A) = mu_0 / (4 pi) integral [1/scrr (div vb(J)) + 1/scrr (divprim vb(J)) - divprim(vb(J)/scrr)] dd(tau')
  $<a>
  According to the Lorenz gauge condition,
  $
    div vb(A) = -mu_0 epsilon_0 pdv(V,t) = - mu_0 /(4 pi) integral dot(rho)/scrr dd(tau')
  $
  With this information, we now evaluate the three terms in @a

Starting with the first term, and using the chain rule on $vb(J)$. Since $vb(J)$ depends on $vb(r)$ only through $t_r$,
$
  div vb(J) = dot(vb(J)) dot grad t_r = -1/c dot(vb(J)) dot (grad scrr)\
  arrow.b\
  1/scrr (div vb(J)) = -1/(scrr c) dot(vb(J)) dot (grad scrr)
$<b>

The next term is the divergence of $vb(J)$ with respect to $vb(r)'$. $vb(J)$ depends on $vb(r)'$ both explicitly and through $t_r$, so
$
  divprim vb(J) = (divprim vb(J))_(t_r) + dot(vb(J)) dot gradprim t_r
  = -dot(rho) - 1/c dot(vb(J)) dot (gradprim scrr)\
  arrow.b\
    1/scrr (divprim vb(J))  = -dot(rho)/scrr - 1/(scrr c) dot(vb(J)) dot (gradprim scrr) = -dot(rho)/scrr + 1/(scrr c) dot(vb(J)) dot (grad scrr)
$<c>


where $(divprim vb(J))_(t_r)$ is the divergence taken at fixed $t_r$, which equals $-dot(rho)$ by the continuity equation.

The last term integrates to 0 which I will explain later.

Adding @b and @c, the only term left is 
$
  -dot(rho)/scrr
$
which gives
$
  div vb(A) = mu_0 /(4 pi) integral (-dot(rho)/scrr) dd(tau') = - (mu_0 epsilon_0)/(4 pi epsilon_0) integral dot(rho)/scrr dd(tau') = \
  = -mu_0 epsilon_0 pdv(,t) [1/(4 pi epsilon_0) integral rho/scrr dd(tau')] = - mu_0 epsilon_0 pdv(V,t)\
  arrow.b\
  ans(div vb(A) = -mu_0 epsilon_0 pdv(V,t))
$
]