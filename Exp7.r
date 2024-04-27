# KHAN MOHD OWAIS RAZA
# 20BCD7138
library(ggplot2)
library(dplyr)
data("iris")
iris_data <- iris[, -5] 
scaled_iris <- scale(iris_data)
set.seed(123)
k <- 3 
kmeans_model <- kmeans(scaled_iris, centers = k, nstart = 25)
iris_data$cluster <- as.factor(kmeans_model$cluster)
ggplot(iris_data, aes(x = Petal.Length, y = Petal.Width, color = cluster)) +
  geom_point(size = 3) +
  labs(title = "Clustering of Iris Dataset (Petal Length vs. Petal Width)",
       x = "Petal Length", y = "Petal Width") +
  theme_minimal() +
  scale_color_brewer(palette = "Set1")
