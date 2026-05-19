import numpy as np
import matplotlib.pyplot as plt

t = np.linspace(0, 2 * np.pi, 200)
plt.plot(np.cos(t), np.sin(t), 'b')

points = [0, np.pi / 2, np.pi, 3 * np.pi / 2]
points = np.linspace(0, 2*np.pi, 9)
for p in points:
    x, y = np.cos(p), np.sin(p)
    # clockwise tangent: (sin, -cos)
    dx, dy = np.sin(p), -np.cos(p)
    plt.plot(x, y, 'ko', ms=6)
    plt.arrow(x, y, 0.2 * dx, 0.2 * dy, head_width=0.05, fc='r', ec='r')

plt.axis('equal')
plt.show()
