install.packages("ggplot2")
library(ggplot2)
data(iris)
str(iris)
summary(iris)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Scatterplot of Sepal Length vs. Sepal Width",
       x = "Sepal Length", y = "Sepal Width")
ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Boxplot of Petal Length by Species",
       x = "Species", y = "Petal Length")
ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(fill = "lightblue", color = "black", bins = 20) +
  labs(title = "Histogram of Sepal Length",
       x = "Sepal Length", y = "Frequency")
ggplot(iris, aes(x = Petal.Width, fill = Species)) +
  geom_density(alpha = 0.5) +
  labs(title = "Density Plot of Petal Width by Species",
       x = "Petal Width", y = "Density") +
  scale_fill_manual(values = c("setosa" = "red", "versicolor" = "green", "virginica" = "blue"))
