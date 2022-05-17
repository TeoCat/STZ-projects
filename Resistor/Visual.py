import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

# Точки измерения
temp_data = pd.read_csv('temp.csv', sep=" ")
temp_data.plot(x='T', y='Z', kind='scatter')

solution = np.array([-0.0236806, 4.98004])
data = np.arange(-10, 150, 1)
data = data.reshape(len(data), 1)
data = np.hstack((data, np.ones((1, len(data))).reshape((len(data), 1))))
mnk = np.exp(data.dot(solution))

# XL апроксимация экспонентой
y = 145.48 * np.exp(-0.024 * data[:, 0])
plt.plot(data[:, 0], y, c='blue', label='xl')

# График на основе МНК
plt.plot(data[:, 0], mnk, c='red', label='mnk')

plt.xlabel('T')
plt.ylabel('Z')

plt.legend()
plt.grid()
plt.show()
