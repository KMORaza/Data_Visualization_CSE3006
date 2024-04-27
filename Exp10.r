library(datasets) 
library(ggplot2) 
data <- AirPassengers
data_df <- data.frame(Time = time(data), Passengers = as.numeric(data))
data_df$Passengers <- scale(data_df$Passengers)
set.seed(123)
wss <- sapply(1:10, function(k) {
  kmeans(data_df$Passengers, centers = k, nstart = 20)$tot.withinss
})
plot(1:10, wss, type = "b", xlab = "Number of clusters (k)", ylab = "Within-group sum of squares",
     main = "Elbow Method")
k <- 3
set.seed(123)
kmeans_model <- kmeans(data_df$Passengers, centers = k, nstart = 20)
data_df$Cluster <- kmeans_model$cluster
ggplot(data_df, aes(x = Time, y = Passengers, color = as.factor(Cluster))) +
  geom_point() +
  labs(title = "K-means Clustering of Air Passengers Data",
       x = "Time",
       y = "Normalized Passengers",
       color = "Cluster") +
  theme_minimal()