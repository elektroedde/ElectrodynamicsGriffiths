import numpy as np
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle
import mpl_toolkits.mplot3d.art3d as art3d
ax = plt.figure().add_subplot(projection='3d')
ax.quiver(0, 0, 0, 1, 1, 1, arrow_length_ratio=0.075, color="r")
ax.quiver(0,0,1,1,1,-1, arrow_length_ratio=0.075, color="g")



ax.set_xlim([0, 1])
ax.set_ylim([0, 1])
ax.set_zlim([0, 1])
ax.set_xticks([])
ax.set_yticks([])
ax.set_zticks([])
ax.set_box_aspect([1, 1, 1])
ax.view_init(elev=15, azim=-30)

ax.text(1.05, 1.05, 1, r'$\mathbf{A}$', color='r')
ax.text(1.05, 1.05, 0, r'$\mathbf{B}$', color='g')
for z, zdir in [(0, 'z'), (1, 'z'), (0, 'y'), (1, 'y'), (0, 'x'), (1, 'x')]:
    p = Rectangle([0, 0], 1, 1, alpha=0.05, color='b')
    ax.add_patch(p)
    art3d.pathpatch_2d_to_3d(p, z=z, zdir=zdir)

edges = [
    [(0,0,0),(1,0,0)], [(1,0,0),(1,1,0)], [(1,1,0),(0,1,0)], [(0,1,0),(0,0,0)],
    [(0,0,1),(1,0,1)], [(1,0,1),(1,1,1)], [(1,1,1),(0,1,1)], [(0,1,1),(0,0,1)],
    [(0,0,0),(0,0,1)], [(1,0,0),(1,0,1)], [(1,1,0),(1,1,1)], [(0,1,0),(0,1,1)],
]
for (x1,y1,z1),(x2,y2,z2) in edges:
    ax.plot([x1,x2], [y1,y2], [z1,z2], 'k-', alpha=1)

plt.savefig("ch01/p03.png")