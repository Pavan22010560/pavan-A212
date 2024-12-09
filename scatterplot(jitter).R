mobile_data <- read.csv("train.csv")

mean_ram <- tapply(mobile_data$ram, mobile_data$price_range, mean)

plot(
  jitter(mobile_data$price_range),
  mobile_data$ram,
  col = "grey",
  xlab = "Price Range",
  ylab = "RAM (MB)",
  main = "Jitterplot of RAM vs Price Range",
  xaxt = "n"
)

axis(1, at = unique(mobile_data$price_range), labels = paste("Range", unique(mobile_data$price_range)))
abline(h = mean_ram[1], col = "red", lwd = 2)
abline(h = mean_ram[2], col = "blue", lwd = 2)
abline(h = mean_ram[3], col = "green", lwd = 2)
abline(h = mean_ram[4], col = "purple", lwd = 2)

legend(
  "topleft",
  legend = c("price range 0", "price range 1", "price range 2", "price range 3"),
  col = c("red", "blue", "green", "purple"),
  lwd = 2,
  title = "Price Ranges"
)