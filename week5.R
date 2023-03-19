library(dplyr)
iris.type <- group_by(iris,Species)
iris.mean <- summarise(iris.type,
                       Sepal.Length = mean(Sepal.Length),
                       Sepal.Width = mean(Sepal.Width),
                       Petal.Length = mean(Petal.Length),
                       Petal.Width = mean(Petal.Width))


