library(treemap)
state <- data.frame(state.x77)

symbols(state$Income, state$Life.Exp,
        circles = state$Population,
        inches = 0.4,
        fg ="white",
        bg = "lightgray",
        lwd = 1.5,
        xlab = "소득",
        ylab = "기대수명",
        main = "소득과 기대수명 버블차트")

text(state$Income, state$Life.Exp,
     rownames(state),
     cex = 0.6,
     col = "brown")