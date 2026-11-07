import numpy as np
import matplotlib.pyplot as plt


n = 12
r=2
x = np.zeros(n)
y = np.zeros(n)

for i in range(n):
    x[i] = r*np.cos(i*2*np.pi/n)
    y[i] = r*np.sin(i*2*np.pi/n)

#Find the work
W = 0
for i in range(n):
    for j in range(n):
        if i != j:
            r_ij = np.hypot(x[i] - x[j], y[i] - y[j])
            W += 1/r_ij

W *= 1/2

print(W)

#Setup a subplot 1x2 here, and plot scatter
theta = np.linspace(0, 2*np.pi, 200)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

ax1.plot(r*np.cos(theta), r*np.sin(theta), '--')
ax1.scatter(x, y)
ax1.set_aspect('equal')
ax1.set_title(f'All {n} on circle, W = {W:.4f}')


for i in range(n):
    if i == 0:
        x[i] = y[i] = 0
    else:
        x[i] = r*np.cos(i*2*np.pi/(n-1))
        y[i] = r*np.sin(i*2*np.pi/(n-1))

W = 0
for i in range(n):
    for j in range(n):
        if i != j:
            r_ij = np.hypot(x[i] - x[j], y[i] - y[j])
            W += 1/r_ij


W *= 1/2
print(W)


#Setup a subplot 1x2 here, and plot scatter
ax2.plot(r*np.cos(theta), r*np.sin(theta), '--')
ax2.scatter(x, y)
ax2.set_aspect('equal')
ax2.set_title(f'{n-1} on circle + 1 at center, W = {W:.4f}')

plt.tight_layout()
plt.show()
