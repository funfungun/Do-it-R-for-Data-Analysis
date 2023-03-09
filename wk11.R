data(mtcars)
plot(mpg~wt, data=mtcars)

model <- lm(mpg~wt, mtcars)
abline(model)

coef(model)
coef(model)[1]
coef(model)[2]

b <- coef(model)[1]
w <- coef(model)[2]
wtsample <- 3.8

equation <- w*wtsample+b
print(equation)

wtData <- mtcars[,"wt"]
mpgPred <- w*wtData+b
mpgData <- mtcars[,"mpg"]

compare <- data.frame(mpgPred, mpgData, mpgPred - mpgData)
colnames(compare) <- c("예상", "실제", "오차")
head(compare)

#########################################################

data(mtcars)
df <- data.frame(mtcars$wt, mtcars$disp, mtcars$hp)
colnames(df) <- c("중량", "배기량", "마력")

plot(df, pch = 16, col = "blue", main = "산점도 매트릭스")

model <-  lm(mpg ~ wt+disp+hp, data = mtcars)
summary(model)

library(MASS)
newmodel <- stepAIC(model)
summary(newmodel)
