import numpy as np
import matplotlib.pyplot as plt

a = 0.5
n = [3,4,5]

x = np.linspace(-1, 1, 2001)
y = np.linspace(-1,1, 2001)

X, Y = np.meshgrid(x,y)


r_values = []
for n in range(3,30):
    Ex = np.zeros_like(X)
    Ey = np.zeros_like(Y)
    for charge in range(n):
        dx = (X-a*np.cos(charge*2*np.pi/n+np.pi/2))
        dy = (Y-a*np.sin(charge*2*np.pi/n+np.pi/2))
        d = np.sqrt(dx**2+dy**2)

        Ex += dx/d**3
        Ey += dy/d**3



    e_field = np.sqrt(Ex**2+Ey**2)
    # local minima of |E| = points where E = 0
    inner = e_field[1:-1, 1:-1]
    is_min = np.ones_like(inner, dtype=bool)
    for di in (-1, 0, 1):
        for dj in (-1, 0, 1):
            if di or dj:
                is_min &= inner <= e_field[1+di:e_field.shape[0]-1+di, 1+dj:e_field.shape[1]-1+dj]

    rows, cols = np.where(is_min)
    rows += 1   # undo the [1:-1] offset
    cols += 1

    # keep the n+1 lowest minima: the center plus one per pair of neighbouring charges
    lowest = np.argsort(e_field[rows, cols])[:n+1]
    rows, cols = rows[lowest], cols[lowest]

    radii = np.hypot(x[cols], y[rows])
    r_min = radii.max()   # all non-center zeros share the same radius
    r_values.append(r_min/a)
    if n < 6:
        plt.imshow(e_field, cmap="turbo", vmax=1000, origin="lower", extent=[-1, 1, -1, 1])
        plt.scatter(x[cols], y[rows], s=20, color="white", edgecolors="black")
        plt.title(f"n = {n}, r = {r_min/a:.3f}a")
        plt.xticks([])
        plt.yticks([])
        plt.savefig(f"ch02/plots/p59_n={n}")

        plt.show()

x = np.arange(3,30)

plt.plot(x,r_values)
plt.xlabel("n point charges")
plt.ylabel("r/a")
plt.savefig("ch02/plots/p59_ninf")
plt.show()