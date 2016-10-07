advertising <- read.csv("~/stat159-hw02/data/Advertising.csv")

reg <- lm(Sales ~ TV, data = advertising)
summary(reg)
a <- summary(reg)

save(a, file = file.path("~", "stat159-hw02","data", "regression.Rdata"))

png(file = file.path("~", "stat159-hw02","images", "scatterplot-tv-sales.png"))
plot(advertising$TV, advertising$Sales, main = "Effect of Advertising on Sales", xlab = "TV Advertising", ylab = "Sales")
abline(reg, col = "red")
dev.off()

pdf(file = file.path("~", "stat159-hw02","images", "scatterplot-tv-sales.pdf"))
plot(advertising$TV, advertising$Sales, main = "Effect of Advertising on Sales", xlab = "TV Advertising", ylab = "Sales")
abline(reg, col = "red")
dev.off()
