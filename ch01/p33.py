import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.art3d import Poly3DCollection

fig = plt.figure()
ax = fig.add_subplot(projection='3d')

L = 2
c = L / 2

# Hide default grid/panes, draw clean coord axes
ax.set_axis_off()
al = L * 1.4
for d, lbl in zip([(al,0,0),(0,al,0),(0,0,al)], ['x','y','z']):
    ax.quiver(0, 0, 0, *d, color='k', arrow_length_ratio=0.08, linewidth=1.5)
    ax.text(*[v*1.07 for v in d], lbl, fontsize=12, ha='center')

# Shaded faces
face_verts = [
    [[0,0,0],[L,0,0],[L,L,0],[0,L,0]],  # bottom
    [[0,0,L],[L,0,L],[L,L,L],[0,L,L]],  # top
    [[0,0,0],[L,0,0],[L,0,L],[0,0,L]],  # front
    [[0,L,0],[L,L,0],[L,L,L],[0,L,L]],  # back
    [[0,0,0],[0,L,0],[0,L,L],[0,0,L]],  # left
    [[L,0,0],[L,L,0],[L,L,L],[L,0,L]],  # right
]
ax.add_collection3d(Poly3DCollection(face_verts, alpha=0.15, facecolor='steelblue', edgecolor='none'))

# Box wireframe: 12 edges
edges = [
    ([0,L],[0,0],[0,0]), ([0,L],[L,L],[0,0]), ([0,L],[0,0],[L,L]), ([0,L],[L,L],[L,L]),
    ([0,0],[0,L],[0,0]), ([L,L],[0,L],[0,0]), ([0,0],[0,L],[L,L]), ([L,L],[0,L],[L,L]),
    ([0,0],[0,0],[0,L]), ([L,L],[0,0],[0,L]), ([0,0],[L,L],[0,L]), ([L,L],[L,L],[0,L]),
]
for x, y, z in edges:
    ax.plot(x, y, z, 'k-', lw=1)

# Outward normals at face centers
normals = [
    ((0, c, c), (-1,  0,  0)),
    ((L, c, c), ( 1,  0,  0)),
    ((c, 0, c), ( 0, -1,  0)),
    ((c, L, c), ( 0,  1,  0)),
    ((c, c, 0), ( 0,  0, -1)),
    ((c, c, L), ( 0,  0,  1)),
]
for (px, py, pz), (nx, ny, nz) in normals:
    ax.quiver(px, py, pz, nx, ny, nz, length=0.5, color='red', arrow_length_ratio=0.3)

ax.set_aspect('equal')
ax.view_init(elev=25, azim=20)
plt.savefig("ch01/p33.png")
