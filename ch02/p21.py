import numpy as np
import matplotlib.pyplot as plt

r = np.linspace(0,10,100)
eps_0 = 8.85e-12
R = 3
q = 1e-9
def Vpot(r):
    k = q/(4 * np.pi* eps_0)
    V_in = k*(1/R - (1/R**3) * (r**2-R**2)/2)
    return np.where((r < R), V_in,k/r)

plt.plot(r,Vpot(r), label="V(r)")
plt.axvline(3,linestyle="--", color="r", label="R")
plt.legend()
plt.savefig("ch02/p21.png")

plt.show()