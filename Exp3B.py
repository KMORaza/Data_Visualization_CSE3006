import pandas as pd
import plotly.graph_objects as go
from plotly.subplots import make_subplots
AirPassengers = pd.read_csv("https://raw.githubusercontent.com/jbrownlee/Datasets/master/airline-passengers.csv")
scatterplot_passengers = go.Figure(go.Scatter(x=AirPassengers['Month'], y=AirPassengers['Passengers'], mode='markers'))
scatterplot_passengers.update_layout(xaxis_title="Month", yaxis_title="Passengers", title="Passenger Count Over Time")
barplot_passengers = go.Figure(go.Bar(x=AirPassengers['Month'], y=AirPassengers['Passengers']))
barplot_passengers.update_layout(xaxis_title="Month", yaxis_title="Passenger Count", title="Passenger Count Distribution")
linked_view_passengers = make_subplots(rows=2, cols=1)
scatterplot_passengers_fig = scatterplot_passengers.to_dict()
barplot_passengers_fig = barplot_passengers.to_dict()
linked_view_passengers.add_trace(go.Scatter(**scatterplot_passengers_fig['data'][0]), row=1, col=1)
linked_view_passengers.add_trace(go.Bar(**barplot_passengers_fig['data'][0]), row=2, col=1)
linked_view_passengers.update_layout(height=600, title_text="Linked View of Passenger Data")
linked_view_passengers.show()
