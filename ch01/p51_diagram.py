import numpy as np
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(5, 4))
ax.set_aspect('equal')
ax.axis('off')

a = np.array([1.0, 2.5])
b = np.array([5.0, 2.5])
cx = (a[0] + b[0]) / 2
cy = a[1]
r = (b[0] - a[0]) / 2

t = np.linspace(0, np.pi, 200)
path1_x = cx + r * np.cos(np.pi - t)
path1_y = cy + 1.4 * np.sin(t)
path2_x = cx + r * np.cos(np.pi - t)
path2_y = cy - 1.4 * np.sin(t)

ax.plot(path1_x, path1_y, 'b-', linewidth=2)
ax.plot(path2_x, path2_y, 'r-', linewidth=2)

ax.plot(*a, 'ko', markersize=8)
ax.plot(*b, 'ko', markersize=8)

ax.text(a[0] - 0.2, a[1], 'a', fontsize=16, ha='right', va='center')
ax.text(b[0] + 0.2, b[1], 'b', fontsize=16, ha='left', va='center')
ax.text(cx, cy + 1.6, 'Path 1', fontsize=12, color='blue', ha='center')
ax.text(cx, cy - 1.6, 'Path 2', fontsize=12, color='red', ha='center')

plt.tight_layout()
plt.savefig('ch01/p51_diagram.png', dpi=150, bbox_inches='tight')
plt.show()
