import numpy as np
import matplotlib.pyplot as plt


r = 1
angles = np.linspace(0, 2*np.pi, 14)

x = np.cos(angles)
y = np.sin(angles)

plt.scatter(x[1:-1],y[1:-1])
plt.scatter(0,0)
plt.quiver(x[1:-1],y[1:-1],-x[1:-1],-y[1:-1], scale=3)




plt.axis('equal')
plt.savefig("ch02/p01.png")
plt.show()


sum = 0
for i in range(1,13):
    sum += np.cos(i*2*np.pi/13)


print(sum)