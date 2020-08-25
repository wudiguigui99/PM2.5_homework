library(ggplot2)
library(dprly)
Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")


vehicle_data <- subset(full_data, type == "ON-ROAD" & fips %in% c("24510","06037"))
vehicle_sum <- aggregate(Emissions ~ year + fips, data = vehicle_data ,sum)
vehicle_sum$fips[vehicle_sum$fips =="24510"] <- "Baltimore"
vehicle_sum$fips[vehicle_sum$fips =="06037"] <- "Los Angeles"

g <- ggplot(data=vehicle_sum,mapping = aes(year, Emissions,color = fips))
g + geom_line() + ggtitle("More emissions from motor vehicle sources in Los Angeles County than Baltimore")