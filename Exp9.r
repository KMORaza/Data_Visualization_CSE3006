# KHAN MOHD OWAIS RAZA
# 20BCD7138
library(class)
library(ggplot2)
set.seed(123)  
n <- 100
x1 <- runif(n, min = -5, max = 5)
x2 <- runif(n, min = -5, max = 5)
class_labels <- ifelse(x1 + x2 > 0, "Class1", "Class2")
data <- data.frame(x1, x2, class_labels)
X <- data[, c("x1", "x2")]
y <- data$class_labels
k <- 5
x1_range <- seq(min(data$x1), max(data$x1), length.out = 100)
x2_range <- seq(min(data$x2), max(data$x2), length.out = 100)
grid <- expand.grid(x1 = x1_range, x2 = x2_range)
knn_results <- knn(train = X, test = grid, cl = y, k = k)
grid$class_labels <- knn_results
plot <- ggplot() +
  geom_point(data = data, aes(x = x1, y = x2, color = class_labels)) +
  geom_raster(data = grid, aes(x = x1, y = x2, fill = class_labels), alpha = 0.3) +
  scale_color_manual(values = c("Class1" = "red", "Class2" = "blue")) +
  scale_fill_manual(values = c("Class1" = "red", "Class2" = "blue")) +
  labs(title = sprintf("k-NN Search with k = %d", k),
       x = "Feature x1",
       y = "Feature x2",
       color = "Data Classes",
       fill = "k-NN Predictions") +
  theme_minimal()
print(plot)

