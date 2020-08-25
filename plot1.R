Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")

summary_year <- aggregate(Emissions ~ year, full_data, sum)

barplot(Emissions ~ year, data= summary_year, xlab = "year", ylab= "total PM2.5 emission", main ="Total PM2.5 Emission")