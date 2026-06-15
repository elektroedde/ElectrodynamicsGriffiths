#import "@local/elektroedde:0.1.0": *
#show: problem

=
Find the velocity of the muon in Ex. 12.8.

#solution[
  $
    &E_("before") = m_pi c^2 cm &&vb(p)_("before") = 0\
    &E_("after") = E_mu + E_nu cm &&vb(p)_("after") = vb(p)_mu + vb(p)_nu
  $
  Conservation of energy gives
  $
    m_pi c^2 = E_mu + E_nu
  $
  while conservation of momentum gives
  $
    vb(p)_mu = -vb(p)_nu
  $

  From example 12.8 we got
  $
    E_mu = ((m_pi^2 + m_mu^2)c^2)/(2 m_pi)
  $
  and we also have
  $
    E_mu = (m_mu c^2)/sqrt(1-u_mu^2/c^2)
  $
  With these two equations we can solve for $u_mu$
  $
    ((m_pi^2 + m_mu^2)c^2)/(2 m_pi) = (m_mu c^2)/sqrt(1-u_mu^2/c^2)\
    arrow.b\
    1 - u_mu^2/c^2 = (4 m_pi^2 m_mu^2 )/((m_pi^2 + m_mu^2)^2)\
    arrow.b\
    u_mu^2 = c^2 - (4 m_pi^2 m_mu^2 c^2)/((m_pi^2 + m_mu^2)^2) = ((m_pi^2 + m_mu^2)^2 - (4 m_pi^2 m_mu^2))/((m_pi^2 + m_mu^2)^2)c^2 =\
    = (m_pi^4 + 2 m_pi^2 m_mu^2 + m_mu^4 - 4m_pi^2m_mu^2)/(m_pi^2+m_mu^2)^2c^2 = (m_pi^4  + m_mu^4 - 2m_pi^2m_mu^2)/(m_pi^2+m_mu^2)^2c^2 =\
    =  ((m_pi^2  - m_mu^2)^2)/(m_pi^2+m_mu^2)^2 c^2\
    arrow.b\
    ans(u_mu =  (m_pi^2-m_mu^2)/(m_pi^2+m_mu^2)c)
  $

] 