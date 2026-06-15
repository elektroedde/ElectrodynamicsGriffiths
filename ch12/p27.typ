#import "@local/elektroedde:0.1.0": *
#show: problem

=
A cop pulls you over and asks what speed you were going. “Well, officer, I cannot tell a lie: the speedometer read $4 times 10^8 "m/s".$” He gives you a ticket, because the speed limit on this highway is $2.5 times 10^8 "m/s"$. In court, your lawyer (who, luckily, has studied physics) points out that a car's speedometer measures proper velocity, whereas the speed limit is ordinary velocity. Guilty, or innocent?

#solution[
  The relation between proper velocity and ordinary velocity is 
  $
    vb(eta) = 1/sqrt(1-u^2/c^2)vb(u)\
    arrow.b\
    vb(u) = 1/sqrt(1+eta^2/c^2)vb(eta)
  $
  Solving for $vb(u)$ with $vb(eta) = 4/3 c$ gives
  $
    vb(u) = 1/sqrt(1+4^2/3^2) 4/3 c = 1/sqrt(25/9) 4/3 c = 3/5 4 / 3 c = 4/5 c = ans(2.4 times 10^8 "m/s")
  $
  Since $vb(u) < 2.5 times 10^8 "m/s"$, the driver is innocent.
]