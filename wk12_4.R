data(Loblolly)
head(Loblolly)
install.packages("ggplot2")
library(ggplot2)

ggplot(data = Loblolly, aes(x = age, y = height)) + geom_line(aes(color = Seed), linetype = 1, size = 1)
