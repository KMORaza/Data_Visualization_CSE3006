library(ggplot2)
library(plotly)
data(AirPassengers)
AirPassengers_df <- as.data.frame(AirPassengers)
scatterplot_passengers <- ggplot(AirPassengers_df, aes(x = time(AirPassengers), y = AirPassengers)) +
  geom_point() +
  labs(x = "Year", y = "Passengers",
       title = "Passenger Count Over Time")
barplot_passengers <- ggplot(AirPassengers_df, aes(x = time(AirPassengers), y = AirPassengers)) +
  geom_bar(stat = "identity") +
  labs(x = "Year", y = "Passenger Count",
       title = "Passenger Count Distribution")
linked_view_passengers <- subplot(
  scatterplot_passengers %>% ggplotly() %>% layout(dragmode = "lasso"),
  barplot_passengers %>% ggplotly() %>% layout(dragmode = "lasso"),
  nrows = 2
)
print(linked_view_passengers)
