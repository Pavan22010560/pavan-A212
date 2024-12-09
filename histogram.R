mobile_data <- read.csv("train.csv")

prcolors <- c("red", "blue", "green", "purple")
hist(
  mobile_data$ram,
  breaks = 30,
  col = "grey90",
  border = "white",
  main = "Ram distribution by price range",
  xlab = "RAM (MB)",
  ylab = "Frequency"
)

for (i in unique(mobile_data$price_range)) {
  subset_data <- mobile_data[mobile_data$price_range == i,]
  hist(
    subset_data$ram,
    breaks = 30,
    col = adjustcolor(prcolors[i+1],alpha.f = 0.5),
    border = "white",
    add = TRUE
  )
}

legend(
  "topleft",
  legend = paste("price Range", unique(mobile_data$price_range)),
  fill = adjustcolor(prcolors[1:length(unique(mobile_data$price_range))], alpha.f = 0.5),
  title = "Price Ranges"
)

