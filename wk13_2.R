install.packages("readxl")
library(readxl)

getwd()
xlsdata <- read_excel("C:/Users/PC/Documents/week13_2/clinic.xls")
View(xlsdata)

data_raw <- xlsdata[,c(2:4)]
head(data_raw)

names(data_raw)
names(data_raw) <- c("state", "city", "name")
names(data_raw)

loc <- table(data_raw$state)
barplot(loc)

install.packages("ggplot2")
library(ggplot2)

ggplot(data=data_raw, aes(x=state)) + geom_bar(stat = "count", width = 0.5, fill = 259)
