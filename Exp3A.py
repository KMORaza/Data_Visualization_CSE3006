import pandas as pd
import matplotlib.pyplot as plt
import plotly.graph_objects as go
from plotly.subplots import make_subplots
airquality = pd.read_csv("https://vincentarelbundock.github.io/Rdatasets/csv/datasets/airquality.csv")
scatterplot = plt.figure()
plt.scatter(airquality['Temp'], airquality['Ozone'])
plt.xlabel('Temperature (F)')
plt.ylabel('Ozone (ppb)')
plt.title('Temperature vs. Ozone')
barplot = plt.figure()
airquality['Wind'].value_counts().plot(kind='bar')
plt.xlabel('Wind Speed (mph)')
plt.ylabel('Frequency')
plt.title('Wind Speed Distribution')
fig = make_subplots(rows=2, cols=1)
fig.add_trace(go.Scatter(x=airquality['Temp'], y=airquality['Ozone'], mode='markers', name='Temperature vs. Ozone'), row=1, col=1)
fig.add_trace(go.Bar(x=airquality['Wind'].value_counts().index, y=airquality['Wind'].value_counts(), name='Wind Speed Distribution'), row=2, col=1)
fig.update_layout(title='Linked View of Air Quality Data', showlegend=False)
fig.show()
