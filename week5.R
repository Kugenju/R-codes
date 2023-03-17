library(dplyr)
library(nycflights13)
by_tailnum <- group_by(flights, tailnum)
delay <- summarise(by_tailnum,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE))
arrange(delay,desc(count))
delay.sub <- filter(delay, count > 20, dist < 2000)
delay.sub


library(dplyr)
iris.type <- group_by(iris,Species)
iris.mean <- summarise(iris.type,
                       Sepal.Length = mean(Sepal.Length),
                       Sepal.Width = mean(Sepal.Width),
                       Petal.Length = mean(Petal.Length),
                       Petal.Width = mean(Petal.Width))
library(ggplot2)
ggplot(iris,aes(x = Sepal.Length,y = Sepal.Width, col = Species))+
  geom_point()+
  geom_point(data = iris.mean,shape = 15,size = 5)


