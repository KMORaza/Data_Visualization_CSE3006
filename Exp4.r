data(iris)
pairs(iris[,1:4], main="Scatterplot Matrix")
pairs(iris[,1:4], main="Scatterplot Matrix", col=iris$Species)
