a <- c(1,2,3,4,5,6)
library(datasets)
data(mtcars)
str(mtcars)
head(mtcars)
attach(mtcars)
plot(wt,mpg)
abline(lm(mpg~wt))  #绘制mpg与wt的最优拟合曲线
#help(lm)
title("Regression of MPG on Weight")
detach(mtcars)

#一个简单例子
dose <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
plot(dose,drugA,type='b')
plot(dose,drugB,type = 'b')

#一个改变图标颜色的实例
opar <- par(no.readonly=TRUE)
par(lty=2,pch=17)
plot(dose,drugA,type='b')
par(opar)

#RcolrBrewer是一个拥有多种颜色的包
library(RColorBrewer)
n <- 7
mycolors <- brewer.pal(n,"Set1")
barplot(rep(1,n),col = mycolors)
brewer.pal.info
display.brewer.all()

n <- 10
mycolors <- rainbow(n)
pie(rep(1,n),labels = mycolors,col = mycolors)
help(rep)

manager <- c(1,2,3,4,5)
data <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
country <- c("US","US","UK","UK","UK")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,99)



