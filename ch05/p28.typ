#import "@local/elektroedde:0.1.0": *
#show: problem

=
(a) Check that Eq. 5.65 is consistent with Eq. 5.63, by applying the divergence.

(b) Check that Eq. 5.65 is consistent with Eq. 5.47, by applying the curl.

(c) Check that Eq. 5.65 is consistent with Eq. 5.64, by applying the Laplacian.


  5.65:
  $
    vb(A)(vb(r)) = mu_0/(4 pi) integral (vb(J)(vb(r')))/scrr dd(tau')
  $
  5.63:
  $
    div vb(A) = 0
  $

  (a) Applying the divergence gives
  $
    div vb(A)(vb(r)) = mu_0/(4 pi) integral div ((vb(J)(vb(r')))/scrr)dd(tau')
  $
  We will use the product rule
  $
    div (vb(J)/scrr) = (scrr(div vb(J)) - vb(J) dot (grad scrr))/scrr^2
  $
  where we have $div vb(J) = 0$ (magnetostatics, steady currents)
  we are left with

