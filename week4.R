library(ggplot2)
ggplot(data = mtcars,aes(x = wt,y = mpg))+
  geom_point()+
  labs(title="Automobile Data",x="weight",y="Mile Per Gallon")
ggplot(data = mtcars,aes(x = wt,y = mpg))+
  geom_point(pch = 17,color="blue",size=2)+
  geom_smooth(method = "lm",color = "red", linetype = 2) +
  labs(title = "Automobile Data", x = "Weight", y="Miles Per Gallon")
mtcars
?mtcars
library(RColorBrewer)
brewer.pal.info
display.brewer.all()
mycolors <- brewer.pal(7,"RdBu")
mycolors
library(datasets)
data(Salaries,package = "carData")
ggplot(Salaries,aes(x = rank,y = salary))+
  geom_boxplot(fill = mycolors[6],color = "black",notch = TRUE) +
  geom_point(position = "jitter",color = "blue",alpha = .5)+
  geom_rug(sides = "l", color = "black")
data(singer,package = "lattice")
ggplot(singer,aes(x = height)) + geom_histogram()
singer
ggplot(singer,aes(x = voice.part,y = height)) + geom_boxplot()
#install.packages("RMySQL")
library(RSQLite)
any(grepl("RMySQL",installed.packages())) # 查看RMySQL是否安装成功
library(RMySQL)
mysqlconnect <- dbConnect(MySQL(),host = "localhost",dbname = "paper",user = "root",password = "123456",
          port = 3306)
dbCreateTable(mysqlconnect,"paper",paper)
dbWriteTable(mysqlconnect,"paper",paper,row.names=FALSE,append=TRUE)
dbGetInfo(mysqlconnect)
paper <- read.csv("paper.csv")
# 打印该数据的前6行
knitr::kable(head(paper))
result = dbGetQuery(mysqlconnect,"select* from paper where st_title like '%viruse%' or st_abstract like '%viruse%'" )
result
dbCreateTable(mysqlconnect,"Virusepaper",paper)
dbListTables(mysqlconnect)
dbRemoveTable(mysqlconnect,'virusepaper')
dbWriteTable(mysqlconnect,"viruse",result,row.names=FALSE,append=TRUE)
dbRemoveTable(mysqlconnect,'paper')
dbRemoveTable(mysqlconnect,'viruse')
dbDisconnect(mysqlconnect)
#data(package = "carData")
singer
ggplot(singer,aes(x= voice.part,y=height)) +
  geom_violin(fill = "lightblue") +
  geom_boxplot(fill = "lightgreen",width = .2)
ggplot(Salaries,aes(x = salary, fill = rank)) +
  geom_density(alpha = .3)
ggplot(Salaries,aes(x = yrs.since.phd,y = salary,color = rank,shape = sex)) +
  geom_point()
ggplot(Salaries,aes(x = rank,fill = sex)) +
  geom_bar(position = "stack") + labs(title = 'Position="stack"')
ggplot(Salaries,aes(x = rank,fill = sex)) +
  geom_bar(position = "dodge") + labs(title = 'position="dodge"')
ggplot(Salaries,aes(x = rank,fill = sex)) +
  geom_bar(position = "fill") + labs(title = 'position="fill"',y = "proportion")
ggplot(Salaries,aes(x = rank,fill = sex)) +
  geom_bar()
ggplot(Salaries,aes(x = rank,fill = "red")) +
  geom_bar()
ggplot(singer,aes(x = height)) +
  geom_histogram() +
  facet_wrap(~voice.part,nrow = 4)
ggplot(Salaries,aes(x = yrs.since.phd,y = salary,color = rank,shape = rank)) +
  geom_jitter() + facet_grid(.~sex)
ggplot(singer,aes(x = height, fill = voice.part)) +
  geom_density() +
  facet_grid(voice.part~.)
ggplot(Salaries,aes(x = yrs.since.phd,y = salary)) +
  geom_point() +
  geom_smooth()
ggplot(Salaries,aes(x = yrs.since.phd,y = salary,
                    linetype = sex, shape = sex, color = sex)) +
  geom_point(size = 2) +
  geom_smooth(method = lm, formula = y ~ poly(x,2),se = FALSE,size =1)







