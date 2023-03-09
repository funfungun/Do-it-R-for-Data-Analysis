print(USArrests)

vars <- c("UrbanPop", "Murder", "Assault")
target <- USArrests[,vars]
pairs(target)

