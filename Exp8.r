install.packages("corrplot")
library(corrplot)
data(iris)
correlation_matrix <- cor(iris[,1:4])  
corrplot(correlation_matrix, method = "color", type = "upper", order = "hclust", addrect = 2)
