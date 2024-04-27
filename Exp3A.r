library(ggplot2)
library(plotly)
data(airquality)
scatterplot <- ggplot(airquality, aes(x = Temp, y = Ozone)) +
  geom_point() +
  labs(x = "Temperature (F)", y = "Ozone (ppb)",
       title = "Temperature vs. Ozone")
barplot <- ggplot(airquality, aes(x = factor(Wind))) +
  geom_bar() +
  labs(x = "Wind Speed (mph)", y = "Frequency",
       title = "Wind Speed Distribution")
linked_view <- subplot(
  scatterplot %>% ggplotly() %>% layout(dragmode = "lasso"),
  barplot %>% ggplotly() %>% layout(dragmode = "lasso"),
  nrows = 2
)
print(linked_view)
