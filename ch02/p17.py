import numpy as np
import matplotlib.pyplot as plt

b = 10
a = 5

s = np.linspace(0,15,1000)

def efield(x):
    return np.where(x > b, 0, np.where(x < a, s, a**2/s))


plt.plot(s,efield(s))
plt.axvline(a, 0.05, linestyle="--", label=r"$a$", color="r")
plt.axvline(b, 0.05, linestyle="--", label=r"$b$", color="g")

plt.title("Electric field of a coaxial cable")
plt.legend()
plt.savefig("ch02/p17.png")
plt.show()