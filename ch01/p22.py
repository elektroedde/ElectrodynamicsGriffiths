import numpy as np
import matplotlib.pyplot as plt
N = 20
X = np.arange(-N, N, 3)
Y = np.arange(-N, N, 3)
X,Y = np.meshgrid(X,Y)
U = X**2 + Y
V = Y**2 + X
plt.quiver(X,Y,U,V)
plt.show()