import numpy as np
import matplotlib.pyplot as plt
from statsmodels.datasets import co2
data = co2.load_pandas().data
plt.figure(figsize=(10, 6))
plt.plot(data.index, data['co2'])
plt.title('Airline Passengers Data')
plt.xlabel('Year')
plt.ylabel('CO2 Levels')
plt.grid(True)
plt.show()
