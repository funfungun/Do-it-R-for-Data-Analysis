data(mtcars)

mosaicplot(~gear+am,
           data = mtcars,
           color = TRUE,
           main = "Gear & Transmission")