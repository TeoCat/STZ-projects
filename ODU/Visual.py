import numpy as np
import pandas as pd
from matplotlib import pyplot as plt

temp_data = pd.read_csv('temp.csv', sep=" ")
temp_data.plot(x='T', y='Y', kind='scatter')

data = np.arange(0, 1.2, 0.01)

y = -7.5 + 8.5 * np.exp(-0.2 * data) + 1.5 * data
plt.plot(data, y, c='blue', label='analytical solution\n'
                                  'dy/dt = 0.3*t - 0.2*y , y(0)=1')

plt.xlabel('time')
plt.ylabel('Y')

plt.legend()
plt.grid()
plt.show()
