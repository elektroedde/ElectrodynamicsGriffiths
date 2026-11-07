#import "@local/elektroedde:0.1.0": *
#show: problem

=
Imagine that new and extraordinarily precise measurements have revealed an error in Coulomb's law. The _actual_ force of interaction between two point charges is found to be
$
  vb(F) = 1/(4 pi epsilon_0) (q_1 q_2)/scrr^2 (1 + scrr/lambda) e^(-scrr\/lambda) hscrr,
$
where $lambda$ is a new constant of nature (it has dimensions of length, obviously, and is a huge number -- say half the radius of the known Universe -- so the correction is small, which is why no one ever noticed the discrepancy before). You are charged with the task of reformulating electrostatics to accommodate the new discovery. Assume the principle of superposition still holds.

(a) What is the electric field of a charge distribution $rho$ (replacing Eq. 2.8)?

(b) Does this electric field admit a scalar potential? Explain briefly how you reached your conclusion. (No formal proof necessary -- just a persuasive argument.)

(c) Find the potential of a point charge $q$ -- the analog to Eq. 2.26. (If your answer to (b) was "no," better go back and change it!) Use $infinity$ as your reference point.

(d) For a point charge $q$ at the origin, show that
$
  integral.cont_cal(S) vb(E) dot dd(vb(a)) + 1/lambda^2 integral_cal(V) V dd(tau) = 1/epsilon_0 q,
$
where $cal(S)$ is the surface and $cal(V)$ the volume of any sphere centered at $q$.

(e) Show that this result generalizes:
$
  integral.cont_cal(S) vb(E) dot dd(vb(a)) + 1/lambda^2 integral_cal(V) V dd(tau) = 1/epsilon_0 Q_"enc",
$
for _any_ charge distribution. (This is the next best thing to Gauss's law, in the new "electrostatics.")

(f) Draw the triangle diagram (like Fig. 2.35) for this world, putting in all the appropriate formulas. (Think of Poisson's equation as the formula for $rho$ in terms of $V$, and Gauss's law (differential form) as an equation for $rho$ in terms of $vb(E)$.)

(g) Show that _some_ of the charge on a conductor distributes itself (uniformly!) over the volume, with the remainder on the surface. [Hint: $vb(E)$ is still zero, inside a conductor.]
