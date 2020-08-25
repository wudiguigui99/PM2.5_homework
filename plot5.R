Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")


vehicle_data <- subset(full_data, type == "ON-ROAD" & fips == "24510")
vehicle_sum <- aggregate(Emissions ~ year, data = vehicle_data ,sum)
barplot(Emissions ~ year, data = vehicle_sum, main = "Motor Vehicle related Emissions")