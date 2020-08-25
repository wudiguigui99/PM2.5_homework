Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")

library(ggplot2)
Baltimore <- subset(full_data, fips == "24510")
sumBaltimore <-aggregate(Emissions ~ type + year, Baltimore, sum)

g <- ggplot(data = sumBaltimore, mapping = aes(year,Emissions,color = type))
g + geom_line() + ggtitle("BaLtimore PM2.5 Emission")