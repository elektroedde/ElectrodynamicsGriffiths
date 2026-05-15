import numpy as np
import matplotlib.pyplot as plt

x, y = np.meshgrid(np.linspace(-5, 5, 11), np.linspace(-5, 5, 11))

r = np.sqrt(x**2 + y**2)
r[r == 0] = np.nan 

u = 2*x / r
v = 2*y / r

magnitude = 100 / r**(1/30)

plt.style.use('dark_background')
plt.quiver(x, y, u, v, magnitude, cmap="jet")
plt.xlim(-5, 5)
plt.ylim(-5, 5)
plt.gca().set_aspect("equal", adjustable="box")

plt.savefig("ch01/p16.png", pad_inches=0)

