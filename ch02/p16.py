import numpy as np
import matplotlib.pyplot as plt

b = 6
a = 3

r = np.linspace(0,15,1000)

def efield(x):
    return np.where(x < 3, 0, np.where(x < 6, (x-a)/r**2, (b-a)/r**2))


plt.plot(r,efield(r))
plt.title("Electric field of a charged shell")
plt.savefig("ch02/p16.png")
plt.show()