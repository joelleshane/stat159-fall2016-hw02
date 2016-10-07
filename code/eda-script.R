advertising <- read.csv("~/stat159-hw02/data/Advertising.csv")

maxtv <- max(advertising$TV)
mintv<- min(advertising$TV)
mediantv <- median(advertising$TV)
maxsales <- max(advertising$Sales)
minsales <- min(advertising$Sales)
mediansales <- median(advertising$Sales)

outfile <- file.path("~", "stat159-hw02", "data", "eda-output.txt")
cat("Summary Statistics\n\n", file = outfile)
cat("Minimum TV:", mintv, "\n", file = outfile, append = TRUE)
cat("Maximum TV:", maxtv, "\n", file = outfile, append = TRUE)
cat("Median TV:", mediantv, "\n", file = outfile, append = TRUE)
cat("Minimum Sales:", minsales, "\n", file = outfile, append = TRUE)
cat("Maximum Sales:", maxsales, "\n", file = outfile, append = TRUE)
cat("Median Sales:", mediansales, "\n", file = outfile, append = TRUE)

png(file = file.path("~", "stat159-hw02","images", "histogram-sales.png"))
hist(advertising$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

pdf(file = file.path("~", "stat159-hw02","images", "histogram-pdf.png"))
hist(advertising$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

png(file = file.path("~", "stat159-hw02","images", "histogram-tv.png"))
hist(advertising$TV, main = "Histogram of TV", xlab = "TV")
dev.off()

pdf(file = file.path("~", "stat159-hw02","images", "histogram-tv.pdf"))
hist(advertising$TV, main = "Histogram of TV", xlab = "TV")
dev.off()
