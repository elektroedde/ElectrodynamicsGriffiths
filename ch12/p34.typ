#import "@local/elektroedde:0.1.0": *
#show: problem

=
A neutral pion of (rest) mass $m$ and (relativistic) momentum $p=3/4 m c$ decays into two photons. One of the photons is emitted in the same direction as the original pion, and the other in the opposite direction. Find the (relativistic) energy of each photon.

#solution[
  Momentum and energy are conserved. We have the energy of the pion
  $
    E^2 = p^2 c^2 + m^2 c^4 = 9/16 m^2 c^4 + m^2 c^4 = 5/4 m^2 c^4
  $
  Conservation of energy gives that the total energy of the two photons is
  $
    E_1 + E_2 = 5/4 m c^2
  $
  Conservation of momentum gives 
  $
    p_1 + p_2 = 3/4 m c
  $
  and using the relation
  $
    E = p c
  $
  gives ($+c$ for photon 1 and $-c$ for photon 2)
  $
    p_1 + p_2 = E_1/c - E_2/c = 3/4 m c arrow E_1 - E_2 = 3/4 m c^2
  $
  $
    2E_1 = m c^2 (5/4 + 3/4) 
  $
  Solving for $E_1$ and $E_2$ gives the answer 
  $
    ans(E_1 = m c^2 cm E_2 = 1/4 m c^2)
  $
]