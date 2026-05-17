import numpy as np
import matplotlib.pyplot as plt

v1 = np.array([1, 3])
v2 = np.array([-2, 1])


v3 = v1 + v2
v4 = np.array([0, np.dot(v1, v2)])
V = np.array([v1, v2, v3, v4])            

origin_x = np.zeros(len(V))
origin_y = np.zeros(len(V))

plt.quiver(origin_x, origin_y, V[:, 0], V[:, 1],
           angles='xy', scale_units='xy', scale=1,
           color=['r', 'b'])

plt.xlim(-3, 3)
plt.ylim(-1, 3)
plt.gca().set_aspect('equal')
plt.axhline(0, color='gray', lw=0.5)
plt.axvline(0, color='gray', lw=0.5)
plt.grid()
plt.show()