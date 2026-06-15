#import "@local/elektroedde:0.1.0": *
#show: problem

=
A particle of mass $m$ whose total energy is twice its rest energy collides with an identical particle at rest. If they stick together, what is the mass of the resulting composite particle? What is its velocity?

#solution[
  A particle of mass $m$ has rest energy
  $
    E_("rest") = m c^2
  $
  and total energy
  $
    E^2 - p^2 c^2 = m^2 c^4 arrow E^2 = m^2 c^4 + p^2 c^2
  $
  Twice gives
  $
    (2m c^2)^2 = m^2 c^4 + p^2 c^2
  $
  Solving for (initial) momentum $p$
  $
    p = sqrt(3)m c
  $
  The initial energy is the energy of the moving particle plus the energy of the stationary particle:
  $
    2m c^2 + m c^2 = 3m c^2
  $

  Both energy and momentum are conserved so we can write
  $
    E^2 - p^2 c^2 = (3m c^2)^2 - (sqrt(3)m c)^2c^2 = 9m^2c^4 - 3m^2c^4 = 6m^2 c^4
  $
  This means the mass of the composite particle is $6m^2$
  which gives each particle a mass of
  $
    m_p = sqrt(6m^2) = sqrt(6)m
  $

  Using
  $
    E = (m_p c^2)/sqrt(1-u^2/c^2)\
    arrow.b\
    3m c^2 = (sqrt(6)m c^2)/sqrt(1-u^2/c^2)\
    arrow.b\
    9(1-u^2/c^2) = 6\
    arrow.b\
    1-u^2/c^2 = 6/9\
    arrow.b\

    u = sqrt(1-6/9)c = sqrt(1/3)c \
    ans(u = c/sqrt(3))
  $

  
]